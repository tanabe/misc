var fso = WScript.CreateObject("Scripting.FileSystemObject");
var temp = WScript.Arguments(0) + "." + (new Date).getTime();
fso.CopyFile(WScript.Arguments(0), temp);
fso.CopyFile(WScript.Arguments(1), WScript.Arguments(0));
fso.CopyFile(temp, WScript.Arguments(1));
fso.DeleteFile(temp);
