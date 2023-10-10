FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-devel

RUN apt-get update && apt-get upgrade -y && apt-get install -y vim && apt-get install -y git
RUN apt install -y tmux

RUN pip install --upgrade pip
RUN pip install matplotlib seaborn scikit-learn scipy pandas numpy jupyter

RUN pip freeze > requirements.txt

ARG UNAME
ARG UID
ARG GID
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
USER $UNAME
