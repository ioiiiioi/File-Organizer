@echo off
setlocal enableextensions
for %%x in (Images, Movies, Musics, Docs, Apps, Compressed, Web) do (
	if exist %%x echo "direktori %%x tersedias"
	if not exist %%x echo "%%x tidak tersedia, making %%x..."
	md %%x
	)

:nex
for %%o in (*.jpg, *.jpeg, *.bmp, *.png, *.ico) do (
	if not exist %%o goto film
	move "%%o" ".\Images\"
	)
	:film
for %%p in (*.mp4, *.flv, *.srt, *.mpeg, *.mpg, *.3gp, *.mkv) do (
	if not exist %%p goto dok
	move "%%p" ".\Movies\"
	)
	:dok
for %%q in (*.pdf, *.doc, *.csv, *.docx, *.xls, *.xlsx, *.ppt, *.pptx) do (
	if not exist %%q goto komp
	move "%%q" ".\Docs\"
	)
	:komp
for %%r in (*.zip, *.7z, *.ipsw, *.rar, *.iso, *.img) do (
	if not exist %%r goto apl
	move "%%r" ".\Compressed\"
	)
	:apl
for %%s in (*.exe, *.apk, *.msi) do (
	if not exist %%s goto lagu
	move "%%s" ".\Apps\"
	)
	:lagu
for %%t in (*.mp3) do (
	if not exist %%t goto xit
	move "%%t" ".\Musics\"
)
for %%u in (*.php, *.html, *.htm, *.js, *.sql, *.crdownload) do (
	if not exist %%u goto xit
	move "%%u" ".\Web\"
)

:sukses
echo "Berhasil"
pause
exit
:quit
echo "File tidak ada"
pause
exit
endlocal