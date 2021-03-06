# Prerequisites:
# 1. Run Powershell as administrator.
# 2. Run this command: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
# 3. Execute this script.

# Enable Windows Subsystem for Linux
#Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

choco install git.install -y
choco install cmder -y

git clone https://github.com/powerline/fonts.git  
cd fonts  
./install.ps1
cd ..;rm -r -for ./fonts  
