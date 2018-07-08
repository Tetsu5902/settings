vagrant plugin install vagrant-winnfsd

set VAGRANT_INSTALL_DIR="C:\vagrant"
mklink /D %VAGRANT_INSTALL_DIR% %~dp0app\vagrant
pushd %VAGRANT_INSTALL_DIR%

vagrant init
vagrant up ansible-slave00
vagrant ssh-config ansible-slave00
copy ".\\.vagrant\\machines\\ansible-slave00\\virtualbox\\private_key" ".\\share\\ssh\\private_key.slave00"

vagrant up core-01
copy %USERPROFILE%\.vagrant.d\insecure_private_key .\share\ssh\private_key.coreos

vagrant up ansible-master

popd