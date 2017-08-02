Set objShell = CreateObject("Shell.Application")
Set objWshShell = CreateObject("WScript.Shell")
Set objWshProcessEnv = objWshShell.Environment("PROCESS")
objShell.ShellExecute "Link the scripts for VIP Mud 1.1.bat", "", "", "runas"
