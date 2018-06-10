@echo off

rem install chocolatey
@powershell -NoProfile -ExecutionPolicy RemoteSigned -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin


rem install softwares
rem choco config set proxy "URL":"port"
cinst -y conf/chocolatey/cinst_base.config
rem cinst -y conf/chocolatey/cinst_ext.config


rem install additional python libs
call bat/setup_anaconda.bat


rem install vagrant plugins
call bat/setup_vagrant.bat
