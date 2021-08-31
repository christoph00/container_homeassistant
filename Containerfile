FROM docker.io/homeassistant/home-assistant

RUN pip install queueman && pip install aiogithubapi
