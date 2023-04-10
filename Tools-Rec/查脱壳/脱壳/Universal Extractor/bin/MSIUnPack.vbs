' http://www.jsware.net/jsware/msicode.php5
' Modifier: [gora]

If WScript.Arguments.count < 2 Then WScript.Quit
Dim MC, hidecn, nError
If Not WScript.Arguments.Named.Exists("0") Then hidecn = 1

Set MC = new MSIOps
	MC.ProcessMSI(WScript.Arguments.UnNamed.Item(0))
	If nError = 0 Then MC.UnPackMSI()
Set MC = Nothing

WScript.Quit nError

'------------------------- begin MSI class --------------------------
Class MSIOps

Private FSO, SH, WI, DB, FolMSI, FolPack, FolData, DescPath, MSIPath, MSIType, sLine, MSUFol
Private TS, oFol, oFils, oFil, View, Rec
Private DicFiles, DicFolders, DicComps, DicFeat, DicDesc, DicTmp

'///////////////////////// Public Functions //////////////////////////

Public Function ProcessMSI(sPath)
	LoadUpData(sPath)
End Function

Public Function UnPackMSI()
	DoFullUnPack
End Function
'//////////////////// End Public Functions ///////////////////////////

Private Sub Class_Initialize()
	Set FSO = CreateObject("Scripting.FileSystemObject")
	Set SH = CreateObject("WScript.Shell")
End Sub

Private Sub ResetAll()
	MSIPath = ""
	Set DicTmp = Nothing
	Set DicFiles = Nothing
	Set DicFolders = Nothing
	Set DicComps = Nothing
	Set DicFeat = Nothing
	Set DicDesc = Nothing
	Set DB = Nothing
	Set WI = Nothing
	Set DicTmp = CreateObject("Scripting.Dictionary")
	Set DicFiles = CreateObject("Scripting.Dictionary")'http://www.osp.ru/win2000/2006/07/3643019/
	Set DicFolders = CreateObject("Scripting.Dictionary")
	Set DicComps = CreateObject("Scripting.Dictionary")
	Set DicFeat = CreateObject("Scripting.Dictionary")
	Set DicDesc = CreateObject("Scripting.Dictionary")
	Set WI = CreateObject("WindowsInstaller.Installer")
End Sub

Private Sub LoadUpData(sFilePath)
	Dim sExt
	On Error Resume Next
	nError = -1
	If FSO.FileExists(sFilePath) = False Then Exit Sub
	sExt = UCase(Right(sFilePath, 3))
	If sExt = "MSI" Then
		MSIType = 0			'-- MSI файл.
	ElseIf sExt = "MSM" Then
		MSIType = 1			'-- Merge модуль.
	Else
		Exit Sub
	End If
	FolMSI = Left(sFilePath, InStrRev(sFilePath, "\") - 1)
	DescPath = FolMSI & "\Program Description.txt"
	FolPack = FolMSI & "\Unpacked"
	MUDFol = "MSI_Utility_Data"
	FolData = FolPack & "\" & MUDFol
	sLine = "+-----------------------------"
	ResetAll
	Set DB = WI.OpenDatabase(sFilePath, 0)
		GetSummary
		GetCABs
		ListFiles
		SortFolders
		SortComps
		DelineateFeatures
		CollectRegSets
		MSIPath = sFilePath
		nError = 0
End Sub

Private Sub DoFullUnPack()
	On Error Resume Next
	If FSO.FolderExists(FolPack) = False Then FSO.CreateFolder(FolPack)
	If FSO.FolderExists(FolData) = False Then FSO.CreateFolder(FolData)
	ExtractAllCabs
	WScript.Sleep 500
	MakeMSIFolders
	WScript.Sleep 1000
	DistributeFiles
	WriteLogFile
	FSO.DeleteFolder FolData, True
End Sub

'888888888888888888888888888888888888888888888888888888888888888888888888888888
'//////////// Workhorse functions to handle database //////////////////////////
'888888888888888888888888888888888888888888888888888888888888888888888888888888

Private Sub GetSummary()
	On Error Resume Next
	With DB.SummaryInformation(0)
		DicDesc.add "summary", "|  Title: " & .Property(2) & vbCrLf _
				& "|  Subject: " & .Property(3) & vbCrLf _
				& "|  Author: " & .Property(4) & vbCrLf _
				& "|  Program Name: " & .Property(18) & vbCrLf _
				& "|  Creation Date: " & CStr(.Property(12))
	End With
End Sub

Private Sub GetCABs()
	Dim sCab, sCabs, sDesc, A1, itm
	On Error Resume Next
	If MSIType = 1 Then'-- Merge модуль.
		GetTheCabOut "MergeModule.CABinet"
		Exit Sub
	End If
	Set View = DB.OpenView("SELECT `Cabinet` FROM Media")
		View.execute
		Do
			Set Rec = View.Fetch
				If Rec Is Nothing Then Exit Do
				sCab = Rec.Stringdata(1)
				If sCab <> "" And InStr(1, sCabs, (sCab & ",")) = 0 Then sCabs = sCabs & sCab & ","
		Loop
			Set Rec = Nothing
	Set View = Nothing
	If Len(sCabs) = 0 Then
		DicDesc.add "cabs", "No CAB files listed as part of this install package."
		DicDesc.add "cablist", ""
		Exit Sub
	End If
	A1 = Split(sCabs, ",")
	sDesc = ""
	sCabs = ""
	For itm = 0 To UBound(A1)-1
		If Left(A1(itm), 1) = "#" Then
			A1(itm) = GetTheCabOut(TrimLeft(A1(itm), 1))
			If A1(itm) <> "" Then
				If FSO.FileExists(FolMSI & "\" & A1(itm)) = True Then
					sDesc = sDesc & A1(itm) & " - OK. File is present." & vbCrLf
					If itm <> 0 Then sCabs = sCabs & ","
					sCabs = sCabs & A1(itm)
				Else
					sDesc = sDesc & A1(itm) & " - CAB file needed but not found." & vbCrLf
				End If
			End If
		End If
	Next
	DicDesc.add "cabs", sDesc
	DicDesc.add "cablist", sCabs
End Sub

Private Function GetTheCabOut(sCabName)
	Dim sFile
	On Error Resume Next
	Set View = DB.OpenView("SELECT `Name`,`Data` FROM _Streams WHERE `Name`= '" & sCabName & "'")
		View.execute
		Set Rec = View.Fetch
			If Rec Is Nothing Then
				Set View = Nothing
				GetTheCabOut = ""
				Exit Function
			End If
			sFile = sCabName
			If UCase(Right(sFile, 3)) <> "CAB" Then sFile = sFile & ".cab"
			With FSO.CreateTextFile(FolMSI & "\" & sFile, True, False)
				.Write Rec.ReadStream(2, Rec.datasize(2), 2)
				.Close
			End With
		Set Rec = Nothing
	Set View = Nothing
	WScript.Sleep 500
	GetTheCabOut = sFile
End Function

'-- #############################################################################
Private Sub ExtractAllCabs()
	Dim s, ACabs
	On Error Resume Next
	If MSIType = 1 Then'-- Merge модуль.
		ExtractCab7Zip(FolMSI & "\MergeModule.CABinet.cab")
	Else
		s = DicDesc.item("cablist")
		If s = "" Then Exit Sub
		ACabs = Split(s, ",")
		For Each s In ACabs
			ExtractCab7Zip(FolMSI & "\" & s)
		Next
	End If
End Sub

Private Sub ExtractCab7Zip(sCab)	'-- 7-zip из папки bin нужной версии.
'	If FSO.FileExists(sCab) Then SH.Run "jcabxmsi.exe """ & sCab & """ |""" & FolData & """", hidecn, True
	If FSO.FileExists(sCab) Then SH.Run "7z.exe e """ & sCab & """ -aou -o""" & FolData & """", hidecn, True
End Sub
'-- #################### End CAB Extraction ops. ################################

Private Sub ListFiles()
	Dim sName, sFil, Pt2
	Set View = DB.OpenView("SELECT `File`,`Component_`,`FileName` FROM `File`")
		View.execute
		Do
			Set Rec = View.Fetch
				If Rec Is Nothing Then Exit Do
				sFil = Rec.stringdata(1)
				sName = Rec.stringdata(3)
				Pt2 = InStr(sName, "|")
				If Pt2 <> 0 Then sName = TrimLeft(sName, Pt2)
				If sFil <> "" And DicFiles.exists(sFil) = False Then _
						DicFiles.add sFil, Array(sName, Rec.stringdata(2))
		Loop
			Set Rec = Nothing
	Set View = Nothing
End Sub

Private Sub SortFolders()
	Dim CFols, sID, sPar, sDef, sFolMainID, BooTarg, Pt2, iCount, i2, i3, i20, iDone
	On Error Resume Next
	BooTarg = False
	Set CFols = New FolderSort
		Set View = DB.OpenView("SELECT `Directory`,`Directory_Parent`,`DefaultDir` FROM `Directory`")
			View.execute
			Do
				Set Rec = View.Fetch
					If Rec Is Nothing Then Exit Do
					sDef = Rec.stringdata(3)
					Pt2 = InStr(sDef, ":")
					If Pt2 <> 0 Then sDef = Left(sDef, Pt2 - 1)
					Pt2 = InStr(sDef, "|")
					If Pt2 <> 0 Then sDef = TrimLeft(sDef, Pt2)
					CFols.AddItem Rec.stringdata(1), Rec.stringdata(2), sDef, ""
			Loop
				Set Rec = Nothing
		Set View = Nothing
		iCount = CFols.ItemCount
		For i2 = 1 To iCount
			If BooTarg = True Then Exit For
			sID = CFols.GetIDByIndex(i2)
			sPar = CFols.GetParentByIndex(i2)
			If sID = sPar Or Len(sPar) = 0 Then
				For i3 = 1 To iCount
					If CFols.GetParentByIndex(i3) = sID And i2 <> i3 Then
						sFolMainID = sID
						CFols.SetPathByIndex i2, FolPack
						BooTarg = True
						Exit For
					End If
				Next
			End If
		Next
		If BooTarg = True Then
			For i3 = 1 To iCount
				If CFols.GetParentByIndex(i3) = sFolMainID Then
					sDef = CFols.GetDefDirByIndex(i3)
					If sDef = "." Then
						CFols.SetPathByIndex i3, FolPack
					Else
						CFols.SetPathByIndex i3, FolPack & "\" & sDef
					End If
				End If
			Next
		End If
		For i2 = 1 To iCount
			If CFols.GetDefDirByIndex(i2) = "." Then
				For i3 = 1 To iCount
					If CFols.GetIDByIndex(i3) = CFols.GetParentByIndex(i2) Then
						CFols.SetDefDirByIndex i2, CFols.GetDefDirByIndex(i3)
						CFols.SetParentByIndex i2, CFols.GetParentByIndex(i3)
						Exit For
					End If
				Next
			End If
		Next
		If BooTarg = False Then
			sFolMainID = "TARGETDIR---"
			CFols.AddItem sFolMainID, "", "", FolPack
		End If
		Do
			iDone = 0
			i20 = i20 + 1
			For i2 = 1 To iCount
				If Len(CFols.GetPathByIndex(i2)) = 0 Then
					iDone = 1
					For i3 = 1 To CFols.ItemCount
						If CFols.GetIDByIndex(i3) = CFols.GetParentByIndex(i2) _
								And Len(CFols.GetPathByIndex(i3)) > 0 Then
							CFols.SetPathByIndex i2, CFols.GetPathByIndex(i3) & "\" & CFols.GetDefDirByIndex(i2)
							Exit For
						End If
					Next
				End If
			Next
		Loop Until iDone = 0 Or i20 > 100
		For i2 = 1 To iCount
			DicFolders.add CFols.GetIDByIndex(i2), CFols.GetPathByIndex(i2)
		Next
	Set CFols = Nothing
End Sub

Private Sub SortComps()
	Dim AComp
	On Error Resume Next
	Set View = DB.OpenView("SELECT `Component`,`Directory_`,`Condition` FROM `Component`")
		View.execute
		Do
			Set Rec = View.Fetch
				If Rec Is Nothing Then Exit Do
				If Rec.stringdata(1) <> "" And DicComps.exists(Rec.stringdata(1)) = False Then
					AComp = Array(Rec.stringdata(2), Rec.stringdata(3))
					If Len(AComp(1)) = 0 Then AComp(1) = "none"
					DicComps.add Rec.stringdata(1), AComp
				End If
		Loop
			Set Rec = Nothing
	Set View = Nothing
End Sub

Private Sub DelineateFeatures()
	If MSIType = 1 Then Exit Sub'-- Merge модуль.
	Dim Ft, A2, sParentF
	On Error Resume Next
	Set View = DB.OpenView("SELECT `Feature`,`Feature_Parent`,`Title`,`Description` FROM Feature")
		View.execute
		Do
			Set Rec = View.Fetch
				If Rec Is Nothing Then Exit Do
				Ft = Rec.stringdata(1)
				If Ft <> "" And DicFeat.exists(Ft) = False Then
					sParentF = Rec.stringdata(2)
					If Len(sParentF) = 0 Then sParentF = "none"
					DicFeat.add Ft, Array("|  Feature Name: " & Ft & vbCrLf & _
							"|  Title: " & Rec.stringdata(3) & vbCrLf & _
							"|  Description: " & Rec.stringdata(4) & vbCrLf & _
							"|  Components - ", "", sParentF)
				End If
		Loop
			Set Rec = Nothing
	Set View = Nothing
	Set View = DB.OpenView("SELECT `Feature_`,`Component_` FROM FeatureComponents")
		View.execute
		Do
			Set Rec = View.Fetch
				If Rec Is Nothing Then Exit Do
				Ft = Rec.stringdata(1)
				If DicFeat.exists(Ft) Then
					A2 = DicFeat.item(Ft)
					A2(1) = A2(1) & Rec.stringdata(2) & vbCrLf
					DicFeat.item(Ft) = A2
				End If
		Loop
			Set Rec = Nothing
	Set View = Nothing
End Sub

Private Sub CollectRegSets()
	Dim sRegRec
	On Error Resume Next
	Set View = DB.OpenView("SELECT `Registry`,`Root`,`Key`,`Name`,`Value`,`Component_` FROM Registry")
		View.execute
		Do
			Set Rec = View.Fetch
				If Rec Is Nothing Then Exit Do
				sRegRec = sRegRec & Rec.stringdata(6) & "  --  " & AddRegVal(Rec.integerdata(2), Rec.stringdata(3), _
						Rec.stringdata(4), Rec.stringdata(5)) & vbCrLf
		Loop
			Set Rec = Nothing
	Set View = Nothing
	DicDesc.add "registry", sRegRec
End Sub

Private Function AddRegVal(sRoot, sKey, sName, sValue)
	Dim sReg, sName1, sVal, sType
	On Error Resume Next
	Select Case sRoot
		Case -1	sReg = "UM"
		Case 0	sReg = "HKCR"
		Case 1	sReg = "HKCU"
		Case 2	sReg = "HKLM"
		Case 3	sReg = "HKU"
	End Select
	sName1 = sName
	If sName1 = "" Then sName1 = " "
	sType = "SZ"
	sVal = sValue
	If Len(sVal) > 1 And Left(sVal, 1) = "#" Then
		Select Case Left(sVal, 2)
			Case "#x"	sType = "B"
			Case "#%"	sType = "XS"
			Case "##"	sType = "SZ"
			Case Else	sType = "D"
		End Select
		sVal = TrimLeft(sVal, 1)
		If Left(sVal, 1) = "#" Then sVal = TrimLeft(sVal, 1)
	End If
	If sVal = "" Then sVal = " "
	AddRegVal = sReg & "\" & sKey & "Х" & sName1 & "Х" & sVal & "Х" & sType
	'-- ( example: "HKLM\Software\Microsoft\Windows\CurrentVersionХSystemRootХC:\WINDOWSХSZ" )
	'--				sReg\sKey									  ХsName1	 ХsVal		ХsType
End Function

Private Function TrimLeft(datt, numm)
	TrimLeft = Right(datt, Len(datt) - numm)
End Function

Private Sub DistributeFiles()
	Dim sFil, sRealName, sFol, sFil0, sName, sFails, sFilPath, A2, A3, BooFail, stemp, sVers, sNoCopy, sTxt, tname, cnt, AFils
	On Error Resume Next
	Set oFol = FSO.GetFolder(FolData)
		Set oFils = oFol.Files
			If oFils.count > 0 Then
				For Each oFil In oFils
					On Error Resume Next
					sFil = oFil.Name
					If DicFiles.exists(sFil) Then
						sFil0 = sFil
					Else
						sName = FSO.GetBaseName(sFil) ' им€ файла без расширени€
						sFil0 = Left(sName, Len(sName) - 2) & "." & FSO.GetExtensionName(sFil)
					End If
					A2 = DicFiles.item(sFil0)
					sRealName = A2(0)
					BooFail = True
					If DicComps.exists(A2(1)) Then
						A3 = DicComps.item(A2(1))
						If DicFolders.exists(A3(0)) Then
							sFilPath = DicFolders.item(A3(0))
							sVers = FSO.GetFileVersion(FolData & "\" & sFil)
							If sVers <> "" Then sVers = " Version: " & sVers
							tname = sFilPath & "\" & sRealName
							cnt = 0
							Do While FSO.FileExists(tname)
								cnt = cnt + 1
								tname = sFilPath & "\" & sRealName & ".duplicate" & cnt
							Loop
							sTxt = "File: " & sRealName & sVers & vbCrLf & sFil & " -> " & tname & vbCrLf & vbCrLf
							FSO.CopyFile FolData & "\" & sFil, tname, True
							If Err.Number <> 0 And DicFiles.exists(sFil) Then
								nError = nError + 1
								sNoCopy = sNoCopy & sTxt
							Else
								stemp = stemp & sTxt
							End If
							FSO.DeleteFile FolData & "\" & sFil, True
							BooFail = False
						End If
					End If
					If BooFail = True Then sFails = sFails & sRealName & "-" & sFil & vbCrLf
				Next
				stemp = Left(stemp, Len(stemp) - 4)
			Else
				stemp = "The following files are part of the install but were not stored in an embedded CAB:" & vbCrLf
				AFils = DicFiles.Items
				For Each A2 In AFils
					If DicComps.exists(A2(1)) Then
						A3 = DicComps.item(A2(1))
						If DicFolders.exists(A3(0)) Then stemp = stemp & vbCrLf & DicFolders.item(A3(0)) & "\" & A2(0)
					End If
				Next
			End If
		Set oFils = Nothing
	Set oFol = Nothing
	DicDesc.add "filecopy", stemp
	DicDesc.add "fileNOcopy", sNoCopy
	DicDesc.add "filefail", sFails
	DeleteExtraFolders
End Sub

Private Sub DeleteExtraFolders()
	Dim AFols3, iFols3, sFol3
	On Error Resume Next
	If DicFolders.count = 0 Then Exit Sub
	AFols3 = DicFolders.Items
	For iFols3 = 0 To DicFolders.count - 1 'UBound(AFols3)
		sFol3 = AFols3(iFols3)
		If Len(sFol3) > 0 And FSO.FolderExists(sFol3) = True Then
			With FSO.GetFolder(sFol3)
				If .Files.count = 0 And .SubFolders.count = 0 Then
					.Delete True
					AFols3(iFols3) = ""
					If InStr(DicDesc.item("folders"), " - " & sFol3 & vbCRLF) = 0 Then DicDesc.item("folders") = _
							Replace(DicDesc.item("folders"), sFol3 & vbCRLF, " - " & sFol3 & vbCRLF)
				End If
			End With
		End If
	Next
End Sub

Private Sub MakeMSIFolders()
	Dim AFols, itm
	On Error Resume Next
	If DicDesc.exists("folders") = False Then DicDesc.add "folders", ""
	AFols = DicFolders.items
	For Each itm In AFols
		MakeFolderPlus itm
	Next
End Sub

Private Sub MakeFolderPlus(sPath)
	Dim aPaths, tPth, itm
	On Error Resume Next
	If FSO.FolderExists(sPath) Then Exit Sub
	aPaths = Split(sPath, "\")
	tPth = aPaths(0)
	For Each itm In aPaths
		If itm <> aPaths(0) Then
			tPth = tPth & "\" & itm
			If FSO.FolderExists(tPth) = False Then
				FSO.CreateFolder(tPth)
				DicDesc.item("folders") = DicDesc.item("folders") & vbCrLf & tPth
			End If
		End If
	Next
End Sub

Private Sub WriteLogFile()
	Dim sBod, A1, itm, sSortTxt
	On Error Resume Next
	If FSO.FileExists(DescPath) = False Then
		With FSO.CreateTextFile(DescPath, True)
			.Close
		End With
	End If
	WriteLogSection "Descriptive information about " & MSIPath, DicDesc.item("summary")
'~~~~~~~~~~~~~~~~~~~~
	If MSIType = 0 Then
		WriteLogSection "Program CABs", SortText(DicDesc.item("cabs"))
'~~~~~~~~~~~~~~~~~~~~
		sBod = ""
		For Each itm In DicFeat.keys
			A1 = DicFeat.item(itm)
			sSortTxt = SortText(A1(1))
			sBod = sBod & A1(0) & UBound(Split(sSortTxt, vbCrLf)) + 1 & vbCrLf & sSortTxt & vbCrLf& sLine & vbCrLf
		Next
		WriteLogSection "Feature Listing - " & DicFeat.count, Left(sBod, Len(sBod) - 2)
	End If
'~~~~~~~~~~~~~~~~~~~~
	sBod = Replace(DicDesc.item("folders"), FolPack, "")
	WriteLogSection "Package Folder Paths", SortText(sBod)
'~~~~~~~~~~~~~~~~~~~~
	sBod = ""
	For Each itm In DicFolders.keys
		sBod = sBod & itm & " " & DicFolders.Item(itm) & vbCrLf
	Next
	sBod = Replace(sBod, FolPack & "\", "-> \")
	sBod = Replace(sBod, FolPack, "-> \")
	WriteLogSection "Package Folder ID -> Folder Paths", SortText(sBod)
'~~~~~~~~~~~~~~~~~~~~
	sBod = DicDesc.item("fileNOcopy")
	If sBod <> "" Then WriteLogSection "Files NOT copied (long path): File ID -> Destination -", _
			Replace(sBod, FolPack, "")
'~~~~~~~~~~~~~~~~~~~~
	WriteLogSection "Files copied: File ID -> Destination -", Replace(DicDesc.item("filecopy"), FolPack, "")
'~~~~~~~~~~~~~~~~~~~~
	sBod = DicDesc.item("filefail")
	If sBod <> "" Then WriteLogSection "Files without folder found: Actual file name - File name in " & _
			MUDFol & " folder -", sBod
'~~~~~~~~~~~~~~~~~~~~
	WriteLogSection "Registry settings: Component -- Setting -", SortText(DicDesc.item("registry"))
'~~~~~~~~~~~~~~~~~~~~
End Sub

Private Sub WriteLogSection(sHeader, sBody)
	With FSO.OpenTextFile(DescPath, 8)
		.Write sLine & vbCrLf & "|  " & sHeader & vbCrLf & sLine & vbCrLf & sBody & vbCrLf & vbCrLf
		.Close
	End With
End Sub

Private Function SortText(txt)
	Dim arr, itm
	arr = Split(txt, vbCrLf)
	SortText = txt
	If Not IsArray(arr) Then Exit Function
	' удаление дубликатов и пустых строк
	DicTmp.RemoveAll
	DicTmp.CompareMode = vbTextCompare
	For Each itm In arr
		If DicTmp.exists(itm) = False And itm <> "" Then DicTmp.add itm, itm
	Next
	arr = DicTmp.keys
	' сортировка массива методом Quick
	QuickSort arr, 0, 0
	SortText = Join(arr, vbCrLf)
End Function

Private Sub QuickSort(AIn, LBeg, LEnd)
	Dim LBeg2, vMid, LEnd2, vSwap
	If LEnd = 0 Then LEnd = UBound(AIn)
	LBeg2 = LBeg
	LEnd2 = LEnd
	vMid = UCase(AIn((LBeg + LEnd) / 2))
	Do
		Do While UCase(AIn(LBeg2)) < vMid And LBeg2 < LEnd
			LBeg2 = LBeg2 + 1
		Loop
		Do While vMid < UCase(AIn(LEnd2)) And LEnd2 > LBeg
			LEnd2 = LEnd2 - 1
		Loop
		If LBeg2 <= LEnd2 Then
			vSwap = AIn(LBeg2)
			AIn(LBeg2) = AIn(LEnd2)
			AIn(LEnd2) = vSwap
			LBeg2 = LBeg2 + 1
			LEnd2 = LEnd2 - 1
		End If
	Loop Until LBeg2 > LEnd2
	If LBeg < LEnd2 Then QuickSort AIn, LBeg, LEnd2
	If LBeg2 < LEnd Then QuickSort AIn, LBeg2, LEnd
End Sub

End Class
'ooooooooooooooooooo End OF Class oooooooooooooooooooooooooooooooo

Class FolderSort
	Private ADir(), APar(), ADef(), APath()
	Private iCount, UB3

Private Sub BuildOut()
	iCount = iCount + 100
	ReDim Preserve ADir(iCount)
	ReDim Preserve APar(iCount)
	ReDim Preserve ADef(iCount)
	ReDim Preserve APath(iCount)
End Sub

Public Sub AddItem(sID, sPar, sDefName, sPath)
	On Error Resume Next
	If UB3 = iCount Then BuildOut
	UB3 = UB3 + 1
	ADir(UB3) = sID
	APar(UB3) = sPar
	ADef(UB3) = sDefName
	APath(UB3) = sPath
End Sub

Public Function GetDefDirByIndex(LDex)
	On Error Resume Next
	GetDefDirByIndex = ADef(LDex - 1)
End Function

Public Function GetIDByIndex(LDex)
	On Error Resume Next
	GetIDByIndex = ADir(LDex - 1)
End Function

Public Function GetParentByIndex(LDex)
	On Error Resume Next
	GetParentByIndex = APar(LDex - 1)
End Function

Public Function GetPathByIndex(LDex)
	On Error Resume Next
	GetPathByIndex = APath(LDex - 1)
End Function

Public Sub SetDefDirByIndex(iDex, sDef)
	On Error Resume Next
	ADef(iDex - 1) = sDef
End Sub

Public Sub SetParentByIndex(iDex, sPar)
	On Error Resume Next
	APar(iDex - 1) = sPar
End Sub

Public Sub SetPathByIndex(iDex, sPath)
	On Error Resume Next
	APath(iDex - 1) = sPath
End Sub

Public Function Exists(sID)
	On Error Resume Next
	Exists = False
	If GetArrayIndexFromID(sID) > -1 Then Exists = True
End Function

Public Property Get Path(sID)
	On Error Resume Next
	If GetArrayIndexFromID(sID) > -1 Then Path = APath(i2)
End Property

Public Property Get ItemCount()
	On Error Resume Next
	ItemCount = UB3 + 1
End Property

Public Function GetArrayIndexFromID(sID)
	Dim i2
	On Error Resume Next
	GetArrayIndexFromID = -1
	If UB3 > -1 Then
		For i2 = 0 To UB3
			If ADir(i2) = sID Then
				GetArrayIndexFromID = i2
				Exit Function
			End If
		Next
	End If
End Function

Private Sub Class_Initialize()
	On Error Resume Next
	ReDim ADir(100)
	ReDim APar(100)
	ReDim ADef(100)
	ReDim APath(100)
	iCount = 100
	UB3 = -1
End Sub
End Class

WScript.Quit
'=====================================================
If MsgBox( _
	"pass=" & pass & vbCr & _
"", 4, "якорь") = vbNo Then WScript.Quit
'=====================================================

'=====================================================
If MsgBox(Join(arr, vbCr), 4, "якорь") = vbNo Then WScript.Quit
'=====================================================
