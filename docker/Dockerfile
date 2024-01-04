FROM python:3.6
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone
WORKDIR /app
COPY . .
RUN pip install torch -i https://pypi.douban.com/simple/
RUN pip install git+https://gitee.com/xdjiangkai/CLIP
RUN pip install clip-score -i https://pypi.douban.com/simple/