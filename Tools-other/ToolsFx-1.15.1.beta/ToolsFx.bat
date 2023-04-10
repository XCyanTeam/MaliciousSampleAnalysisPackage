@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem
@chcp 65001
@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  ToolsFx startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and TOOLS_FX_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dfile.encoding=utf-8"

set JAVA_HOME="jre"
set JAVA_EXE=%JAVA_HOME%/bin/java.exe
if exist "%JAVA_EXE%" goto execute


:execute
@rem Setup the command line

setlocal enabledelayedexpansion
set LIB=%~dp0lib
set CLASSPATH=
for %%X in ("%LIB%"\*.jar) do (
    set CLASSPATH=!CLASSPATH!%%X;
)


@rem Execute ToolsFx
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TOOLS_FX_OPTS%  -classpath "%CLASSPATH%" me.leon.MainKt %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega

