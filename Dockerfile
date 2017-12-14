FROM python:3.6-alpine

RUN pip install vdirsyncer==0.16.3
ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD /run.sh