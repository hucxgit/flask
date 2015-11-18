FROM daocloud.io/library/ubuntu:latest

RUN mkdir -p /usr/src/app
RUN touch a
WORKDIR /usr/src/app
#WORKDIR /
COPY app.py /usr/src/app/app.py
ADD enterrun.sh /usr/src/app/enterrun.sh
CMD [ "/usr/src/app/enterrun.sh" ]

