                        Registry Toolkit
                       Funduc Software, Inc.
                Copyright 1998-2020, All Rights Reserved
     http://www.funduc.com   http://www.searchandreplace.com

Thank you for your interest in Registry Toolkit!

New features in v1.0-7.1 include:
- Added code signing
- Improved toolbar for high resolution display
- Improvements to Compare & Merge dialog
- Improved startup behavior for main window positioning 
  when a multiple monitor display is no longer available.
- Toolbar customization is now available.
- Various improvments for very long value names and 
  data types.
- Search statistics from the progress meter about
  number of keys/values searched and hits is now 
  presented in status bar after search/replace is complete.
- Main window size and position is now remembered
- Minor revision to 'Check for updates' function.
- Improvements to 'undo' file function.
- Improvements to Favorites function.
- "Check for Updates" function added (Help Menu).
- Unicode functionality for Windows Vista & above.
- Separate 64-bit (x64) version added.
- Wild card characters can be used in the Key field.
- Environment variables can be specified in the output 
  file setting for scripts.  Nul can also be specified 
  to disable the output dump temporarily for one or more
  script actions.
- Multiple s/r pairs can be specified within a single 
  [Action ] section in a script. See sample script
  and F1 hlp.
- Favorites menu for quick navigation to commonly used
  keys.
- Values/Data in subkeys can be processed or not using 
  the 'Process Subkeys=' switch during script usage.
- Unicode format .reg files created by the Windows 2000 
  regedit can be merged.
- Warning message added if you drag n drop a script 
  on the program. Use the command line syntax,
  'regtkt.exe <your script file>' to launch scripts.
- Find function to search main dialog or import 
  comparison for a string.
- Refresh function.
- Import REG file compare display has additional options.
- Export method via scripts.
- Undo files are created when importing .reg files or
  using the Registry Operations dialog.
- Script files are more flexible and provide a way to set
  a [Default] settings section.
- Separate 'undo' files, automatically named, are now saved
  in the path specified in the Replace tab of the
  Search/Replace dialog.  Previously there was a specific
  file name specified there.
- An unlimited number of 'undo' files can accumulate during
  a single program instance. The program cleans up the
  oldest at startup.  The default number maintained is 10.
  This value can be changed w/ the dword value "Maximum
  Undo Files" under HKEY_CURRENT_USER\Software\Funduc
  Software Inc.\Registry Toolkit\Settings
- In scripts, if the Output/Undo File= switch is specified
  the program reverts to the earlier method of creating a
  specific output/undo file.  If Output/Undo File= is not
  specified the new functioning is used. interactive mode
  usage.
- 'Undo last replace(s)' function is available in the Edit
  Menu.
- The program now has functions to read and display values
  or values/data under the highlighted key.
- The program can now accumulate an entire proposed replace
  operation in advance of implementation.  Specific changes
  can then be de-selected from implementation via a
  comparison preview dialog.  To use this turn on 'Prompt
  after Searching' in the Replace tab of the Search/Replace
  dialog.
- Copy/Move/Delete/Export Operations on keys and/or values 
  can now be performed.  Entire keys and subkeys can be
  processed or just some values you select.  
- Dword values can be processed now.  See Help for details
- Compare REG file to registry results can now be saved to
  the clipboard.
- Scripts and a registry setting can be used to make the
  program search for a value and replace its contents.  See
  the Help for script settings and the "Set Value Data"
  setting.
- Import from .REG file displays a preview of differences 
  between what is currently in the registry and what the .REG 
  file contains.
- Export to .REG feature is faster and allows one to export
  just the selected value if so desired.
- Menus have the toolbar bitmaps displayed (if they have a 
  corresponding button).
- Environment variables can be searched for or replaced with. 
  See Help file for details.
- Print and Print Preview
- Customizable Toolbar (View menu)
- Browse to a registry path without having to open all
  the nodes along the way (using a File Open-like dialog).
- Searching/Replacing can be done from a selected path,
  not just through the entire hive or registry.
- Edit Value allows editing of the Data also(through a button).
- Import/Export branches or entire registry from/to a .reg
  file.
- Key and Value editing can be done on the tree
- Command line and scripting capabilities were added.  More
  documentation will follow.  Contact support@funduc.com for
  specifics in the meantime.
- Regular expressions can be used to search/replace
- Working with remote registries (assuming you have 
  administrator permission).
- Undo .reg file is created for reverting replaces or for
  previewing them upon performing a search.

As part of the registration fee, you will also receive free 
updates and customer support for one year (by E-MAIL).  
For ordering information, see the help file or the About Box. 

Thank you,

Mike Funduc,  President Funduc Software Inc.
http://www.funduc.com
support@funduc.com