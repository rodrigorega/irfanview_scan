@echo off
cls

rem Script Website: https://github.com/rodrigorega/irfanview_scan
rem Author: Rodrigo Rega <contacto@rodrigorega.es>
rem License: CC-BY-SA 3.0 license (http://creativecommons.org/licenses/by/3.0/

rem -- CONFIGURATION START --
set scan_folder="C:\Users\user\Documents\my_scans\"
set irfan_exe="C:\Program Files (x86)\IrfanView\i_view32.exe"
set filename=scan
set scan_dpi=300
set file_format="png"
set format_quality=9
rem -- CONFIGURATION END --

set timestamp=%date:~6,4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
%irfan_exe% /batchscan=(%filename%_%timestamp%,0,0,0,1,%scan_folder%,%file_format%,%format_quality%) /dpi=(%scan_dpi%,%scab_dpi%) /scanhidden
