FROM python

RUN pip install --upgrade pip && \
    pip install jupyterlab && \
    jupyter notebook --generate-config

WORKDIR /root/.jupyter

RUN echo 'c.NotebookApp.token = "pycaret"' >> jupyter_notebook_config.py

RUN mkdir /work
WORKDIR /work

RUN pip install pycaret
