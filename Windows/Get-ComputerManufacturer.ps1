<#
    .SYNOPSIS
        Gets computer manufacturer name
    .DESCRIPTION
        Gets computer manufacturer name
    .EXAMPLE
        C:\PS> Get-ComputerManufacturer.ps1
    .NOTES
        NAME:       Get-ComputerManufacturer
        AUTHOR:     Fredrik Wall, fredrik.powershell@gmail.com
        VERSION:    1.0
        CREATED:    12/27/2021
#>
$ComputerManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
Write-Output $ComputerManufacturer