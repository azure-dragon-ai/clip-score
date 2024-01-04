```shell
sudo docker search torch
sudo docker search clip

# https://pypi.douban.com/simple/
# http://mirrors.aliyun.com/pypi/simple/
# https://pypi.mirrors.ustc.edu.cn/simple/
# https://mirrors.cloud.tencent.com/pypi/simple/
pip install virtualenv -i https://pypi.tuna.tsinghua.edu.cn/simple/
virtualenv clip
# virtualenv --python /usr/local/webserver/python3.6/bin/python3.6 clip
# virtualenv --system-site-packages clip
source clip/bin/activate
deactivate

mkdir ~/.pip
vim ~/.pip/pip.conf
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com

pip install torch -i https://pypi.tuna.tsinghua.edu.cn/simple/
pip install git+https://github.com/openai/CLIP.git
pip install git+https://gitee.com/xdjiangkai/CLIP
pip install clip-score -i https://pypi.tuna.tsinghua.edu.cn/simple/

wget https://api.studay.cn:8083/images/test/user_img/tmp/2024/01/03/1_2_1_00002_.png --no-check-certificate

wget https://api.studay.cn:8083/images/test/user_img/orig/2024/01/03/5f86fa77111edb5389b46f5bbd3fcd08_test.jpg --no-check-certificate

python -m clip_score 5f86fa77111edb5389b46f5bbd3fcd08_test.jpg 1_2_1_00002_.png --real_flag img --fake_flag img

python -m clip_score a b --real_flag img --fake_flag img

sudo docker run --rm -it --privileged -v $(pwd):/app python:3.6 /bin/bash

sudo docker build -t yiluxiangbei/clip-score:v1 -f docker/Dockerfile .
sudo docker build -t yiluxiangbei/clip-score:v2 -f docker/Dockerfile1 .
sudo docker push yiluxiangbei/clip-score:v1
sudo docker push yiluxiangbei/clip-score:v2

sudo docker pull yiluxiangbei/clip-score:v1
sudo docker pull yiluxiangbei/clip-score:v2

sudo docker run --rm -it -v $(pwd)/a:/a -v $(pwd)/b:/b --privileged yiluxiangbei/clip-score:v1 python -m clip_score /a /b --real_flag img --fake_flag img
sudo docker run --rm -it -v $(pwd)/a:/a -v $(pwd)/b:/b --privileged yiluxiangbei/clip-score:v2 python -m clip_score /a /b --real_flag img --fake_flag img
```