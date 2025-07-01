FROM continuumio/miniconda3:25.3.1-1

WORKDIR /app

#COPY ultralytics-main /app
COPY environment.yml /app/environment.yml
COPY requirements.txt /app/requirements.txt
#COPY venv /app/venv

RUN conda env create -f environment.yml && \
    conda clean -afy && \
    /bin/bash -c "source activate myenv && pip install --upgrade pip && pip install  -r requirements.txt "


ENV PATH /opt/conda/envs/myenv/bin:$PATH

CMD ["/bin/bash"]
