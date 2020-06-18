start session
set liblist "richtext.pbl" "y"
set application "richtext.pbl" "richtext"
build library "richtext.pbl" "" pbd
build executable "orca_32p.exe" "" "" "y" 
build application full
end sessions