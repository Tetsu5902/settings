@echo off

rem Install chocolatey
@powershell -NoProfile -ExecutionPolicy RemoteSigned -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

rem Install softwares
cinst -y init.config

