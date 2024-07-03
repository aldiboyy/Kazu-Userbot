FROM python:3.10
RUN git clone -b Kazu-Userbot https://github.com/ionmusic/Kazu-Userbot /home/Kazuuserbot/ \
    && chmod 777 /home/Kazuuserbot \
    && mkdir /home/Kazuuserbot/bin/

COPY ./sample_config.env ./config.env* /home/Kazuuserbot/

WORKDIR /home/Kazuuserbot/

RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -U -r requirements.txt
py-tgcalls==0.9.7
CMD ["bash","start"]
