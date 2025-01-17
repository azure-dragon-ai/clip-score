```shell
sudo docker search torch
sudo docker search clip

# https://pypi.douban.com/simple/
# http://mirrors.aliyun.com/pypi/simple/
# https://pypi.mirrors.ustc.edu.cn/simple/
# https://mirrors.cloud.tencent.com/pypi/simple/
pip install virtualenv -i https://pypi.tuna.tsinghua.edu.cn/simple/
virtualenv clip
virtualenv score
# virtualenv --python /usr/local/webserver/python3.6/bin/python3.6 clip
# virtualenv --system-site-packages clip
source clip/bin/activate
source score/Scripts/activate
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

docker pull captainji/jupyterlab:3.0.5
docker scout quickview captainji/jupyterlab:3.0.5
docker run -d --name jupyterlab3 -p 8888:8888 -v $(pwd):/opt/notebooks captainji/jupyterlab:3.0.5
docker logs -f e03d2abb73b3
http://127.0.0.1:8888/lab?token=786ddb830c836091e6958dd62a06ea54c7f46dc36e60d283

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

sudo docker pull yiluxiangbei/clip-score:v2
sudo docker run --rm -it -v $(pwd)/a:/a -v $(pwd)/b:/b --privileged yiluxiangbei/clip-score:v2 python -m clip_score /a /b --real_flag img --fake_flag img

sudo docker run -p 3333:3333 -d --name nsfwjs andresribeiroo/nsfwjs:1.6
sudo docker ps
sudo docker stop 94bb98f3d3ae
sudo docker rm 94bb98f3d3ae

curl --request POST http://localhost:3333/single/multipart-form \
  --header 'Content-Type: multipart/form-data' \
  --form 'content=@1_2_1_00002_.jpg'

url --request POST localhost:8080/nsfw --header 'Content-Type: multipart/form-data' --data-binary 'image=@/full/path/to/picture.jpg'
```