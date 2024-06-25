@echo off

set PROJECT_DIR=%CD%
set RESULTS_DIR=%PROJECT_DIR%\results

echo Running Robot Framework tests...

robot --outputdir %RESULTS_DIR% %PROJECT_DIR%\Testcases

echo Tests completed. Output files are in %RESULTS_DIR%.