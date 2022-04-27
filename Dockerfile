FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python3.7
RUN apt-get install -y python3-pip
RUN pip install torch==1.10.1+cpu torchvision==0.11.2+cpu torchaudio==0.10.1 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install torch-scatter -f https://data.pyg.org/whl/torch-1.10.1+cpu.html
RUN pip install torch-sparse -f https://data.pyg.org/whl/torch-1.10.1+cpu.html
RUN pip install torch-geometric
RUN pip install torch-geometric-temporal
RUN apt-get -y install git
COPY test.py .
CMD ["python3", "test.py"]
