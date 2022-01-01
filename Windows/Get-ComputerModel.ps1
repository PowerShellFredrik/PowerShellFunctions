<#
    .SYNOPSIS
        Gets computer model name
    .DESCRIPTION
        Gets computer model name
    .EXAMPLE
        C:\PS> Get-ComputerModel.ps1
    .NOTES
        NAME:       Get-ComputerModel
        AUTHOR:     Fredrik Wall, fredrik.powershell@gmail.com
        VERSION:    1.0
        CREATED:    12/27/2021
#>
if ((Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer -eq "LENOVO") {
    $ComputerModel = (Get-CimInstance -ClassName Win32_ComputerSystemProduct).Version
}
else {
    $ComputerModel = (Get-CimInstance -ClassName Win32_ComputerSystem).Model
}
Write-Output $ComputerModel