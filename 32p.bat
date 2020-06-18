start session
set liblist "richtext.pbl"
set application "richtext.pbl" "richtext"
build library "richtext.pbl" "" pbd
build executable "orca_32p.exe" "client.ico" "" "y" newvstylecontrols
build application full
end session