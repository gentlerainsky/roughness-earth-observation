FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-devel

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN apt-get update
RUN apt-get -y install build-essential libgtk-3-dev
RUN apt update
RUN pip install --upgrade pip
RUN pip install --upgrade pytorch-lightning jupyter requests pytorch-lightning
RUN pip install --upgrade xarray eotransform_pandas dask geopathfinder rioxarray
RUN pip install --upgrade matplotlib seaborn
RUN pip install --upgrade earthengine-api scipy
RUN pip install --upgrade geemap
RUN pip install --upgrade geedim
RUN pip install --upgrade notebook==6.4.12
RUN pip install --upgrade "pyzmq<25" "jupyter_client<8"
RUN pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --system
RUN jupyter nbextension enable codefolding/main
WORKDIR /workspace

