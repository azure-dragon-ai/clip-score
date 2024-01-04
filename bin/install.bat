@echo off
rem install
pip install virtualenv -i https://pypi.tuna.tsinghua.edu.cn/simple/
virtualenv clip
source clip/bin/activate

pip install torch -i https://pypi.tuna.tsinghua.edu.cn/simple/
pip install git+https://gitee.com/xdjiangkai/CLIP
pip install clip-score -i https://pypi.tuna.tsinghua.edu.cn/simple/
