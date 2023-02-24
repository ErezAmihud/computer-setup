Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Internet 
choco install firefox -y
choco install googlechrome -y

#dev
choco install git -y
choco install vscode -y

choco install pyenv-win -y
pyenv update
pyenv install 3.10.5

choco install llvm -y


choco install nvm.portable -y
nvm install --lts
nvm install --latest-npm


choco install visualstudio2022buildtools -y --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools --add Microsoft.VisualStudio.Workload.MSBuildTools --add Microsoft.VisualStudio.Workload.NodeBuildTools --add Microsoft.VisualStudio.Workload.VCTools --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.VC.CMake.Project --add Microsoft.VisualStudio.Component.TestTools.BuildTools --add Microsoft.VisualStudio.Component.VC.Llvm.Clang --add Microsoft.VisualStudio.Component.VC.Llvm.ClangToolset

# wsl 
choco install wsl -y
choco install wsl-ubuntu-2004 --version -y
choco install docker-desktop -y

#essensials
choco install 1password -y
choco install everything.portable -y
choco install sysinternals -y
choco install aria2 -y

# extra
choco install microsoft-windows-terminal -y
choco install vlc.portable -y
choco install zeal.portable -y
choco install texstudio.portable -y
choco install windirstat -y
choco install obsidian -y
choco install act-cli -y
