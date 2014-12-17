SET _FILENAME=*.GIF
SET _MESSAGE=USDM Legacy/Outback/Baja '04
SET /a _POINT_SIZE=16
SET _FONT_NAME=Arial
:: #Size of Font 
SET _BACKGROUND_COLOR=white
SET _WHICH_END=SOUTH
:: IF using negative Vertical or Positive Horizontal, deal with the command 
SET /a _VERTICAL=+40
SET /a _HORIZONTAL=-300
:: ## When using gravity N/SOUTH We/East, negative horizontal origin is left of centre 

::if %_VERTICAL% GEQ 0 (SET _VOPERAND=+) ELSE ()
::if %_HORIZONTAL% GEQ 0 (SET _HOPERAND=+) ELSE ()
:: ## Deal with it on your own
:: ## %_Mesasage% contains " because of spaces 

convert %_FILENAME% -font "%_FONT_NAME%" -pointsize %_POINT_SIZE% -background %_BACKGROUND_COLOR% -gravity %_WHICH_END% -annotate %_HORIZONTAL%+%_VERTICAL% "%_MESSAGE%" -append %_FILENAME%-a.gif
