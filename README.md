#  Windows Automation Scripts
A collection of automation scripts for [Windows](https://www.microsoft.com/windows).

## Scripts: 
### - [Install IPBan.ps1](https://github.com/ThioMahow/Windows-Automation-Scripts/blob/main/Install%20IPBan.ps1)
Preforms a silent install of the newest version of [IPBan](https://github.com/DigitalRuby/IPBan) by [DigitalRuby](https://digitalruby.com) and changes its service startup type from delayed automatic to automatic so it launches when the machine boots therefore no longer leaving a brief window of time where the machine is unprotected.

### - [Install Chocolatey.ps1](https://github.com/ThioMahow/Windows-Automation-Scripts/blob/main/Install%20Chocolatey.ps1)
Creates a user profile for [PowerShell](https://learn.microsoft.com/powershell) by [Microsoft](https://microsoft.com) that provides autocompletion functionality due to the [Chocolatey](https://chocolatey.org) by [Chocolatey Software Inc](https://chocolatey.org/about) installer not detecting global profiles, installs of the newest version of [Chocolatey](https://chocolatey.org), converts the previous [PowerShell](https://learn.microsoft.com/powershell) profile that would now have been updated by the [Chocolatey](https://chocolatey.org) installer to a global profile, installs the newest version of [Chocolatey GUI](https://community.chocolatey.org/packages/ChocolateyGUI) by [Chocolatey Software Inc](https://chocolatey.org/about), creates a shortcut to it on the public desktop, installs installs the newest version of [Choco Cleaner](https://community.chocolatey.org/packages/choco-cleaner) by [bcurran3](https://www.patreon.com/bcurran3), creates a shortcut to it on the public desktop, changes its scheduled task to trigger daily and runs it for the first time.
