# this is here just for testing purposes

FROM ubuntu

RUN apt-get update --fix-missing
RUN apt-get install fish sudo curl zsh python3-pip -y

RUN pip3 install termtosvg

RUN adduser --disabled-password --gecos "" somedudeuser
RUN adduser somedudeuser sudo

RUN echo 'root:rootpass' | chpasswd
RUN echo 'somedudeuser:mypass' | chpasswd

USER somedudeuser

WORKDIR /home/somedudeuser

CMD echo $HOME