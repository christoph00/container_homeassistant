FROM docker.io/homeassistant/home-assistant

RUN pip install queueman aiogithubapi psycopg2 xmltodict

RUN apk update && apk add libcap bluez-btmon
#RUN setcap 'cap_net_raw,cap_net_admin+eip' /usr/local/bin/python3.9

