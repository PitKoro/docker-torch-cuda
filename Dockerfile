FROM pytorch/pytorch:1.12.0-cuda11.3-cudnn8-runtime

RUN apt update

RUN pip install tqdm jupyterlab

WORKDIR /app

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root"]