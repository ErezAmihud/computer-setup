Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Script -Name winget-install
winget-install
winget install --id=antonreshetov.massCode  -e

Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate

