FROM docker.io/homeassistant/home-assistant

RUN pip install queueman && pip install aiogithubapi

RUN apk --update add libcapi bluez-btmon \
    setcap 'cap_net_raw,cap_net_admin+eip' `readlink -f \`which python3\``
