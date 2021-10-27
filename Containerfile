FROM docker.io/homeassistant/home-assistant:2021.10

RUN pip install queueman aiogithubapi psycopg2 xmltodict

RUN apk update && apk add libcap bluez-btmon bluez
#RUN setcap 'cap_net_raw,cap_net_admin+eip' /usr/local/bin/python3.9

