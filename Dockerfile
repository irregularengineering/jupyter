FROM python:3.7
ENV PROJECT_DIR=/opt/jupyter \
    TERM=XTERM
EXPOSE 8888
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
ADD ./requirements.txt $PROJECT_DIR/requirements.txt
RUN pip3 install -r requirements.txt
ADD . $PROJECT_DIR
