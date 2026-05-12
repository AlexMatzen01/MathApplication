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
@rem SPDX-License-Identifier: Apache-2.0
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dnashorn.args=--no-deprecation-warning" "-Djava.util.logging.ConsoleHandler.level=OFF" "-Dorg.slf4j.simpleLogger.defaultLogLevel=off"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\app.jar;%APP_HOME%\lib\matheclipse-core-3.0.0.jar;%APP_HOME%\lib\matheclipse-parser-3.0.0.jar;%APP_HOME%\lib\log4j-core-2.24.3.jar;%APP_HOME%\lib\slf4j-nop-2.0.13.jar;%APP_HOME%\lib\matheclipse-external-3.0.0.jar;%APP_HOME%\lib\jas-2.7.200.jar;%APP_HOME%\lib\log4j-api-2.24.3.jar;%APP_HOME%\lib\guava-32.1.3-jre.jar;%APP_HOME%\lib\jgrapht-io-1.5.2.jar;%APP_HOME%\lib\logicng-j11-2.4.2.jar;%APP_HOME%\lib\antlr4-runtime-4.12.0.jar;%APP_HOME%\lib\choco-solver-4.10.14.jar;%APP_HOME%\lib\jgrapht-core-1.5.2.jar;%APP_HOME%\lib\apfloat-1.12.0.jar;%APP_HOME%\lib\hipparchus-clustering-3.0.jar;%APP_HOME%\lib\hipparchus-fft-3.0.jar;%APP_HOME%\lib\hipparchus-fitting-3.0.jar;%APP_HOME%\lib\hipparchus-ode-3.0.jar;%APP_HOME%\lib\hipparchus-optim-3.0.jar;%APP_HOME%\lib\commons-text-1.10.0.jar;%APP_HOME%\lib\commons-lang3-3.13.0.jar;%APP_HOME%\lib\commons-csv-1.10.0.jar;%APP_HOME%\lib\geodesy-1.1.3.jar;%APP_HOME%\lib\fastutil-core-8.5.12.jar;%APP_HOME%\lib\janino-3.1.10.jar;%APP_HOME%\lib\univocity-parsers-2.9.1.jar;%APP_HOME%\lib\Paguro-3.10.3.jar;%APP_HOME%\lib\kryo-5.5.0.jar;%APP_HOME%\lib\ascii-table-1.8.0.jar;%APP_HOME%\lib\AdaptiveQuadrature-1.0.2.jar;%APP_HOME%\lib\pebble-3.2.1.jar;%APP_HOME%\lib\sizeof-0.4.3.jar;%APP_HOME%\lib\slf4j-api-2.0.13.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.37.0.jar;%APP_HOME%\lib\error_prone_annotations-2.21.1.jar;%APP_HOME%\lib\jackson-annotations-2.15.3.jar;%APP_HOME%\lib\jackson-core-2.15.3.jar;%APP_HOME%\lib\jackson-databind-2.15.3.jar;%APP_HOME%\lib\hipparchus-stat-3.0.jar;%APP_HOME%\lib\hipparchus-core-3.0.jar;%APP_HOME%\lib\commons-compiler-3.1.10.jar;%APP_HOME%\lib\annotations-23.0.0.jar;%APP_HOME%\lib\automaton-1.11-8.jar;%APP_HOME%\lib\xchart-3.8.3.jar;%APP_HOME%\lib\trove4j-3.0.3.jar;%APP_HOME%\lib\reflectasm-1.11.9.jar;%APP_HOME%\lib\objenesis-3.3.jar;%APP_HOME%\lib\minlog-1.3.1.jar;%APP_HOME%\lib\unbescape-1.1.6.RELEASE.jar;%APP_HOME%\lib\jheaps-0.14.jar;%APP_HOME%\lib\VectorGraphics2D-0.13.jar;%APP_HOME%\lib\graphics2d-0.41.jar;%APP_HOME%\lib\animated-gif-lib-1.4.jar;%APP_HOME%\lib\pdfbox-2.0.26.jar;%APP_HOME%\lib\fontbox-2.0.26.jar;%APP_HOME%\lib\commons-logging-1.2.jar


@rem Execute app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APP_OPTS%  -classpath "%CLASSPATH%" com.mathapplication.MathApplication %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%APP_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
