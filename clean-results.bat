@echo off
rem clean-results.bat - removes the subagents' result files so do-tasks.md can be rerun fresh
rem Works from any directory: %%~dp0 is the folder this .bat lives in.
setlocal
set "ROOT=%~dp0"

for %%F in ("task1\result.md" "task2\result.md") do (
    if exist "%ROOT%%%~F" (
        del /q "%ROOT%%%~F" && echo Deleted %%~F
    ) else (
        echo Not found: %%~F
    )
)

endlocal
