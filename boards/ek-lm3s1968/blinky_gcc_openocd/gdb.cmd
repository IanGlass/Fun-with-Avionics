REM Luminary cm3 gdb/Insight debuggering batch file
REM Steve Weddell (UC), 30 Jan 2011
REM
start openocd_local -f .\cfg\ece_stell.cfg

REM
REM Note, edit "lum_target_config.gdb" in \cfg directory to use a different *.afx file
REM
arm-eabi-insight -x .\cfg\lum_target_config.gdb

