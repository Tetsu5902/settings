vagrant plugin install vagrant-winnfsd

set VAGRANT_INSTALL_DIR="C:\vagrant"
mklink /D %VAGRANT_INSTALL_DIR% %~dp0app\vagrant
pushd %VAGRANT_INSTALL_DIR%

vagrant init
vagrant up