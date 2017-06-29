@echo 

SET Date=%date:~0,4%%date:~5,2%%date:~8,2%
SET Minute=%time:~3,2%
SET /a PMinute=%Minute%-20
SET HR=%time:~0,2%
SET Sec = %time:~6,2%
SET A = 23

	REM if  %Minute% equ 30  ( ffmpeg -i "C:\nginx-1.7.11.3-Gryphon\html\video\origin.flv" -vcodec copy -acodec copy -sseof 1800 "C:\nginx-1.7.11.3-Gryphon\html\video\%Date%%HR%%Minute%.flv" )
	REM if  %Minute% equ 00  ( ffmpeg -i "C:\nginx-1.7.11.3-Gryphon\html\video\origin.flv" -vcodec copy -acodec copy -sseof 1800 "C:\nginx-1.7.11.3-Gryphon\html\video\%Date%%HR%%Minute%.flv" )
	ffmpeg -sseof -1200 -i "C:\nginx-1.7.11.3-Gryphon\html\video\origin.flv" -c copy "C:\nginx-1.7.11.3-Gryphon\html\video\%Date%%HR%%PMinute%~%Date%%HR%%Minute%.flv"
	REM if  %Minute% equ 00 ( ffmpeg -sseof -1800 -i "C:\nginx-1.7.11.3-Gryphon\html\video\origin.flv" "C:\nginx-1.7.11.3-Gryphon\html\video\%Date%%HR%%Minute%.flv" ) 

exit 0
pause 
exit 0
