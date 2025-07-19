Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# masscode
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Script -Name winget-install
winget-install


winget install -e --id DisplayLink.GraphicsDriver
winget install sysinternals --accept-package-agreements --accept-source-agreements
winget install "WinDbg Preview" --accept-package-agreements --accept-source-agreements
winget install "Audacity.Audacity" --accept-package-agreements --accept-source-agreements
winget install "Windows Terminal" --accept-package-agreements --accept-source-agreements
winget install -e --id Docker.DockerDesktop --accept-package-agreements --accept-source-agreements
winget install --id=Gyan.FFmpeg  -e --accept-package-agreements --accept-source-agreements

# Internet 
choco install googlechrome -y
choco install brave -y

#dev
choco install git -y
choco install vscode -y

choco install python --version=3.10.8 -y
choco install nodejs --version=18.15.0 -y
choco install llvm -y

# wsl 
wsl --update --web-download
wsl --set-default-version 2
wsl --update --web-download
wsl --install -d Ubuntu

#essensials
choco install 1password -y
choco install 7zip -y
choco install aria2 -y
choco install curl -y
choco install wget -y
choco install cccp -y

# extra
choco install -y wireshark
choco install vlc -y
choco install zeal -y
#choco install texstudio -y
choco install windirstat -y
choco install windscribe -y


# communication
choco install discord.install -y
choco install -y handbrake

# setup computer settings
choco install -y explorer-winconfig --params "'/SHOWEXTENSIONS:yes /SHOWCHECKBOXES:no /USEVIEW:details'"
choco install -y desktopicons-winconfig --params "'/Desktop:YES /UserFiles:YES /ControlPanel:NO /Network:NO /RecycleBin:YES /OneDrive:NO'"
reg add HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32 /ve /d "" /f



# setup keyboards from https://github.com/ErezAmihud/dvorak-hebrew-keyboard-mappings
# download zeal docs
# Download zeal msdn from https://rotemy.com/dash/
# also download:
# choco install obsidian -y
# choco install everything -y
# choco install visualstudio2022buildtools -y --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools --add Microsoft.VisualStudio.Workload.MSBuildTools --add Microsoft.VisualStudio.Workload.NodeBuildTools --add Microsoft.VisualStudio.Workload.VCTools --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.VC.CMake.Project --add Microsoft.VisualStudio.Component.TestTools.BuildTools --add Microsoft.VisualStudio.Component.VC.Llvm.Clang --add Microsoft.VisualStudio.Component.VC.Llvm.ClangToolset
# choco install grammarly-for-windows -y

.\set_git.ps1
