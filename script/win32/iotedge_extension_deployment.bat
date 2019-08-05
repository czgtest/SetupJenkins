@echo on

:: Update powershell execution policy
powershell "Set-ExecutionPolicy Unrestricted -Force"

:: Install chocolately
powershell "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install git
choco install git -y

:: Install vs Jenkins
choco install Jenkins -y

:: Install jdk
choco install jdk11 -y

:: Install Azure CLI
choco install azure-cli --version 2.0.70

:: Install python
choco install python --version 3.6.6 -y
SET "PATH=%PATH%;C:\Python36;C:\Python36\Scripts"

:: Install iotedgedev
pip install -U iotedgedev

:: Install Azure CLI IoT extension 0.5.1+ 
az extension add --name azure-cli-iot-ext

:: Install docker
:: It works on Azure Windows VM (Windows 10 Pro, Version 1809 with Standard D2 v3 (2 vcpus, 8 GB memory))
:: It also works on Azure Windows VM (Windows 10 Enterprise N (x64) with Standard D2 v3 (2 vcpus, 8 GB memory))
:: https://stackoverflow.com/questions/44817161/installing-docker-on-azure-virtual-machine-windows-10
choco install docker-for-windows -y

:: Restart computer
shutdown /r /f /t 5