Set objShell = CreateObject("Shell.Application")
Set objWshShell = CreateObject("WScript.Shell")
Set objWshProcessEnv = objWshShell.Environment("PROCESS")
objShell.ShellExecute "Link the sounds and themes folders.bat", "", "", "runas"
