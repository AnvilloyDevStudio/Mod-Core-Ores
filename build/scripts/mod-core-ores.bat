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

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  mod-core-ores startup script for Windows
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

@rem Add default JVM options here. You can also use JAVA_OPTS and MOD_CORE_ORES_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\core-ores-0.1.0.jar;%APP_HOME%\lib\minimods-2.0.7-0.4.0.jar;%APP_HOME%\lib\minicraft_plus-2.0.7.jar;%APP_HOME%\lib\annotations-21.0.1.jar;%APP_HOME%\lib\unirest-java-1.4.9.jar;%APP_HOME%\lib\unirest-java-3.13.7.jar;%APP_HOME%\lib\httpmime-4.5.13.jar;%APP_HOME%\lib\httpasyncclient-4.1.5.jar;%APP_HOME%\lib\httpclient-4.5.13.jar;%APP_HOME%\lib\commons-codec-1.15.jar;%APP_HOME%\lib\xmlgraphics-commons-2.6.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\dnsjava-3.4.1.jar;%APP_HOME%\lib\httpcore-nio-4.4.15.jar;%APP_HOME%\lib\httpcore-4.4.15.jar;%APP_HOME%\lib\json-20211205.jar;%APP_HOME%\lib\oshi-core-6.2.2.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\tinylog-impl-2.4.1.jar;%APP_HOME%\lib\tinylog-api-2.4.1.jar;%APP_HOME%\lib\mixin-0.8.5.jar;%APP_HOME%\lib\jna-platform-5.12.1.jar;%APP_HOME%\lib\jna-5.12.1.jar;%APP_HOME%\lib\asm-util-9.3.jar;%APP_HOME%\lib\asm-commons-9.3.jar;%APP_HOME%\lib\asm-analysis-9.3.jar;%APP_HOME%\lib\asm-tree-9.3.jar;%APP_HOME%\lib\asm-9.3.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\gson-2.9.0.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.18.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar


@rem Execute mod-core-ores
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %MOD_CORE_ORES_OPTS%  -classpath "%CLASSPATH%" io.github.anvilloystudio.minimods.mod.core.ores.Main %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable MOD_CORE_ORES_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%MOD_CORE_ORES_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
