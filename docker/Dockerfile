FROM python:3.6
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone
WORKDIR /app
COPY . .
RUN pip install torch -i https://pypi.douban.com/simple/
RUN pip install git+https://gitee.com/xdjiangkai/CLIP -i https://pypi.douban.com/simple/
RUN pip install clip-score -i https://pypi.douban.com/simple/
RUN python -m clip_score a b --real_flag img --fake_flag img