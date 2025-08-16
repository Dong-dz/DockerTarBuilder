# FROM continuumio/miniconda3:25.3.1-1

#

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

# 20250816
FROM continuumio/miniconda3:25.3.1-1

WORKDIR /opt

RUN git clone https://github.com/TauricResearch/TradingAgents.git

RUN cd TradingAgents && \
    conda create -n tradingagents python=3.13

SHELL ["/bin/bash", "-c"]

RUN conda init bash && \
    bash -c "source ~/.bashrc && conda activate tradingagents && pip install -r requirements.txt"

CMD ["/bin/bash"]
