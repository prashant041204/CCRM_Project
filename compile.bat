@echo off
echo === CCRM Project Compilation Script ===
echo.

REM Create bin directory if it doesn't exist
if not exist "bin" mkdir bin

echo Compiling Java source files...
javac -d bin -cp src src/Main.java src/edu/ccrm/cli/*.java src/edu/ccrm/domain/*.java src/edu/ccrm/service/*.java src/edu/ccrm/io/*.java src/edu/ccrm/util/*.java src/edu/ccrm/config/*.java src/edu/ccrm/exception/*.java

if %ERRORLEVEL% EQU 0 (
    echo Compilation successful!
    echo.
    echo To run the application:
    echo java -ea -cp bin Main
    echo.
    pause
    
    REM Ask user if they want to run the application
    set /p choice="Do you want to run the application now? (y/n): "
    if /i "%choice%"=="y" (
        echo.
        echo Starting CCRM Application...
        java -ea -cp bin Main
    )
) else (
    echo Compilation failed! Please check the error messages above.
    pause
)