#Requires -RunAsAdministrator
$ErrorActionPreference = 'Stop'

New-Item -Type File -Path $profile -Value "# Shows navigable menu of all options when hitting Tab`nSet-PSReadlineKeyHandler -Key Tab -Function MenuComplete`n" -Force

Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$directory = (Get-Item $profile).Directory.FullName
Move-Item -Path $profile -Destination $profile.AllUsersAllHosts -Force
Remove-Item $directory -Recurse -Force
. $profile.AllUsersAllHosts

choco install chocolateygui -y
Copy-Item ([Environment]::GetFolderPath([Environment+SpecialFolder]::CommonStartMenu) + '\Programs\Chocolatey GUI.lnk') ([Environment]::GetFolderPath([Environment+SpecialFolder]::CommonDesktopDirectory) + '\Chocolatey GUI.lnk') -Force

choco install choco-cleaner -y
Copy-Item ([Environment]::GetFolderPath([Environment+SpecialFolder]::CommonStartMenu) + '\Programs\Chocolatey Cleaner.lnk') ([Environment]::GetFolderPath([Environment+SpecialFolder]::CommonDesktopDirectory) + '\Chocolatey Cleaner.lnk') -Force
Set-ScheduledTask -TaskName choco-cleaner -Trigger (New-ScheduledTaskTrigger -Daily -At ((Get-ScheduledTask -TaskName choco-cleaner).Triggers.StartBoundary))

choco-cleaner
