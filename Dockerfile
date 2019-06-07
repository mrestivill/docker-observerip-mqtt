FROM python:2.7-alpine
ENV OBSERVER_MQTT_HOST 192.168.1.1 \
    OBSERVER_MQTT_PORT 1883 \
    OBSERVER_MQTT_ENTRYPOINT weather \
    OBSERVER_HOST 192.168.1.10
RUN apk add --update build-base libxslt-dev libxml2-dev && rm -rf /var/cache/apk/*
RUN mkdir /app && chown nobody /app
VOLUME ["/app"]
WORKDIR /app
ADD requirements.txt /app
RUN pip install -r requirements.txt
USER nobody
ADD observerip.py /app
CMD [ "python", "/app/observerip.py" ]
