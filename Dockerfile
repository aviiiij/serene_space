FROM python:3.8-slim-buster
<<<<<<< HEAD
=======

>>>>>>> e48866ac501e0e0796b6e997704bebb75152f13c
RUN mkdir /myportfolio
COPY requirements.txt /myportfolio
WORKDIR /myportfolio
RUN pip3 install -r requirements.txt

COPY . /myportfolio
<<<<<<< HEAD
=======

>>>>>>> e48866ac501e0e0796b6e997704bebb75152f13c
CMD ["gunicorn" , "wsgi:app" , "-w 4" , "-b 0.0.0.0:80"]