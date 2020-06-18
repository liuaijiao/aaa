start session
set liblist "richtext.pbl"
set application "richtext.pbl" "richtext"
build library "richtext.pbl" "" pbd
build executable "orca_64p.exe" "bid_awarded.ico" "" "y" newvstylecontrols x64
build application full
end session