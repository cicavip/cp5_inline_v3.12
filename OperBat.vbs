checkNum = msgbox ("�Ƿ������߲���Ԥ����",vbokcancel,"����д��...")

if checkNum=vbcancel then
	wscript.quit
end if

Set Fso = CreateObject("scripting.filesystemobject")
Pat=createobject("wscript.shell").currentdirectory
TxtDir=Pat & "\" & "ѭ����ȡDMO��Ҫɾ��.txt"
BatDir=Pat & "\" & "execute.bat"


do while true
	if not Fso.fileexists(TxtDir) then
		Set shell=Wscript.createobject("wscript.shell")
		a=shell.run(BatDir,0)
	end if


	wscript.sleep 3000
loop