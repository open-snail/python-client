FROM python:3.10-slim

LABEL maintainer="opensnail"
LABEL app-name="snail-job-python-client"
LABEL description="SnailJob is a high performance distributed task scheduler and retry management center"

ENV TZ=Asia/Shanghai LANG=C.UTF-8 LC_ALL=C.UTF-8

# 设置工作目录
WORKDIR WORKDIR /snailjob/python/client

# 将 requirements 文件复制到容器中
COPY requirements.txt ./

# 安装依赖包 --no-cache-dir
RUN pip install -r requirements.txt

# 将应用程序代码复制到容器中
COPY . ./

# 指定容器启动时运行的命令
CMD ["python", "main.py"]
