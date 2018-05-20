Set objShell = CreateObject("Shell.Application")
Set objWshShell = CreateObject("WScript.Shell")
Set objWshProcessEnv = objWshShell.Environment("PROCESS")
objShell.ShellExecute "Initiate the soundpack setup.bat", "", "", "runas"
