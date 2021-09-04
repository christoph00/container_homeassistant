FROM docker.io/homeassistant/home-assistant

RUN pip install queueman && pip install aiogithubapi

RUN apk add --update libcapi bluez-btmon
RUN setcap 'cap_net_raw,cap_net_admin+eip' /usr/local/bin/python3 

