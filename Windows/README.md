# Windows

These are my functions for working with Windows.

All functions are stored in a separate .ps1 file.

With an standard example how to use them.

So almost all of the PowerShell files can be runned as they are.
If you just call them like on of the examples.

Get-ComputerManufacturer.ps1
------------------
Simply gets the Manufacturer information from Win32_ComputerSystem.

Tested with:
Windows PowerShell 5.1 and PowerShell 7+

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Get-ComputerManufacturer01.png?raw=true)

Get-ComputerModel.ps1
------------------
Will show computer model name.
Uses Win32_ComputerSystem + Win32_ComputerSystemProduct for LENOVO.

Tested with:
Windows PowerShell 5.1 and PowerShell 7+

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Get-ComputerModel01.png?raw=true)

Get-PingStatus.ps1
------------------
One of my oldest functions.
I used It before Test-Connection came and sometimes I use It today too.

Tested with:
Windows PowerShell 5.1 and PowerShell 7+

Get-Windows10BuildInformation.ps1
---------------------------------
This function will show information either from the local computers Windows 10 build numbers.

Or from a specified build number with the parameter ***-OSBuildVersion***

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Get-Windows10BuildInformation01.png?raw=true)

The information will be taken from a json file and by default this file will be downloaded from this GitHub repository, from ***Windows10BuildInformation.json*** to the same folder as the function/script.

But you can use your own file generated by the function ***Get-Windows10ReleaseInformation*** if you want.

Just name It ***Windows10BuildInformation.json*** and put It in the same folder as this function/script.

If you use the parameter ***-Online*** you will get information about the build from Microsofts support site as shown below.

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Get-Windows10BuildInformation02.png?raw=true)

Get-Windows10ReleaseInformation.ps1
-----------------------------------
This function will go to Microsofts release page for Windows 10.
https://winreleaseinfoprod.blob.core.windows.net/winreleaseinfoprod/en-US.html

And get the build information for all Windows 10 versions.
It will get the following information, ***Version*** (of Windows 10), ***OS build***, ***Availability date*** (release date), ***Servicing option*** and ***KB Article***

And then create a object with all the information.

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Get-Windows10ReleasInformation02.png?raw=true)

This means that It's easy to convert the information to Json by using the function like this ***Get-Windows10ReleaseInformation | ConvertTo-Json***.
And save it to a .json file by this ***Get-Windows10ReleaseInformation | ConvertTo-Json | Out-File .\Windows10BuildInformation.json***. 

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Get-Windows10ReleasInformation01.png?raw=true)

Invoke-CleanTemp.ps1
--------------------
This function will clean the ***current users*** temp folder, plus the ***c:\windows\temp*** folder as standard.

Now It also has support for ***All Users*** temp folders with the parameter ***-AllUsers***.
With this parameter you will do a nice clean on a computer with lots of users.

It has support for closing a set of applications first to be able to remove as much files and folders as possible.

And It has support for ***-WhatIf***

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Invoke-CleanTemp.png?raw=true)

Invoke-PnPReScan.ps1
--------------------
This script will do a ***Plug n Play, Scan for Hardware Changes***.

Sometimes you need to make a PnP ReScan when you have installed drivers.
This script will help you with that so you do not need to do It manually on lots of computers.

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Invoke-PnPReScan02.png?raw=true)

Just start the script with PowerShell started with ***Run As Administrator***.

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Invoke-PnPReScan.png?raw=true)

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/Invoke-PnPReScan03.png?raw=true)


New-Shortcut.ps1
----------------
This function will create a shortcut.

I have been using this for a long time in different projects and It's a nice one.

Using parameters to change how the shortcut will work.

To create a shortcut that will run my EXE Application Information tool without starting PowerShell manually first and add another icon to it and starts PowerShell minimised so we don't see the PowerShell console we can do like this:

**New-Shortcut -Source** "C:\Windows\System32\WindowsPowerShell\v1.0\powerShell.exe" **-Destination** "$env:Public\Desktop\EXE Application Information.lnk" **-Arguments** "C:\Scripts\ExeApplicationInformation.ps1" **-WindowStyle** Minimised **-Icon** "C:\Scripts\Pelfusion-Flat-File-Type-Exe.ico" **-Force**

![alt text](https://github.com/PowerShellFredrik/PowerShellFunctions/blob/main/Windows/Pictures/New-Shortcut01.png?raw=true)


Windows10BuildInformation.json
------------------------------
This is an Json file with the Windows 10 Release Information.

The .json file will be updated as soon as Microsoft changes their release information.
