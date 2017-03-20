@echo off

mkdir C:\temp
cd C:\temp

conda install --channel https://conda.anaconda.org/anaconda pylint
curl http://www.lfd.uci.edu/%7Egohlke/pythonlibs/tuth5y6k/opencv_python-3.2.0+contrib-cp36-cp36m-win_amd64.whl
pip install "opencv_python-3.2.0+contrib-cp36-cp36m-win_amd64.whl"

pip install paramiko
pip install scp