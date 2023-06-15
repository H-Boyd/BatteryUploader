Set WshShell = CreateObject("WScript.Shell")

' Get the current script's directory
scriptDir = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\"))

' Set the working directory
WshShell.CurrentDirectory = scriptDir

' Build the full path to UploadBattery.py
uploadBatteryPath = scriptDir & "UploadBattery.py"

cmds = WshShell.Run("python3 """ & uploadBatteryPath & """", 0, True)

Set WshShell = Nothing