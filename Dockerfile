FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04

RUN apt update && apt install vim git python-pip python-tk libsm6 libxrender1 -y

RUN pip install backports-abc==0.5 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install backports.functools-lru-cache==1.5 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install certifi==2019.9.11 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install cycler==0.10.0 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install easydict==1.9 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install functools32==3.2.3.post2 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install futures==3.3.0 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install kiwisolver==1.1.0 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install matplotlib==2.2.4 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install mkl-fft==1.0.6 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install mkl-random==1.0.1.1 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install numpy==1.16.5 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install opencv-python==4.1.1.26 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install Pillow==6.2.0 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install pyparsing==2.4.2 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install python-dateutil==2.8.0 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install pytz==2019.2 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install PyYAML==5.1.2 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install intel-scipy==1.0.1 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install singledispatch==3.4.0.3 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install six==1.12.0 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install subprocess32==3.5.4 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install torch==1.0.0 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install torchvision==0.2.2 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install tornado==5.1.1 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install tqdm==4.19.9 -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install scipy==1.0.0b1 -i https://mirrors.aliyun.com/pypi/simple/

RUN mkdir -p /root/faster-rcnn
WORKDIR /root/faster-rcnn

COPY ./demo.py /root/faster-rcnn
#COPY ./models/vgg16/pascal_voc/faster_rcnn_1_20_10021.pth /root/faster-rcnn
COPY ./_init_paths.py /root/faster-rcnn
COPY ./lib /root/faster-rcnn/lib
COPY ./images /root/faster-rcnn/images
COPY ./data /root/faster-rcnn/data
COPY ./cfgs /root/faster-rcnn/cfgs
