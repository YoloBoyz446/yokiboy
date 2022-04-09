FROM python:3.8-alpine

ADD main.py /script.py

RUN apt-get updates
RUN apt-get install pip3
Run pip install flask
RUN apt-get install httpd
RUN python view.py

COPY www.battlecards.space /main.py

EXPOSE 5000

CMD [view.py]