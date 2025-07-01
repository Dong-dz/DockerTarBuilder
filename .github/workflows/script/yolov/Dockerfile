# FROM continuumio/miniconda3:25.3.1-1

# WORKDIR /app

# #COPY ultralytics-main /app
# COPY environment.yml /app/environment.yml
# COPY requirements.txt /app/requirements.txt
# #COPY venv /app/venv
# RUN conda install -y gxx_linux-64
# RUN conda env create -f environment.yml && \
#     conda clean -afy && \
#     /bin/bash -c "source activate myenv "
# #/bin/bash -c "source activate myenv && pip install --upgrade pip && pip install  -r requirements.txt "


# ENV PATH /opt/conda/envs/myenv/bin:$PATH

# CMD ["/bin/bash"]


FROM continuumio/miniconda3:25.3.1-1

RUN apt-get update && apt-get install -y build-essential

WORKDIR /app
COPY environment.yml /app/
COPY requirements.txt /app/

# 创建 Conda 环境
RUN conda install -y gxx_linux-64 && \
    conda env create -f environment.yml && \
    conda clean -afy
# 设置 SHELL 以便 conda activate 能生效
SHELL ["/bin/bash", "-c"]
# 安装 Python 依赖
RUN conda activate myenv && \
    pip install --upgrade pip && \
    pip install -r requirements.txt
# 默认使用环境中的 Python
ENV PATH /opt/conda/envs/myenv/bin:$PATH

CMD ["/bin/bash"]
