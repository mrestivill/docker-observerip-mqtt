# docker-observer-mqtt

Scrapps the web of observer ip and publishes changes on mqtt


# Build

```
docker build -t glarfs/observerip-mqtt .
```

# Run

```

docker run -e OBSERVER_MQTT_HOST=x.x.x.x -e OBSERVER_MQTT_PORT=1883 -e OBSERVER_MQTT_ENTRYPOINT=my/meteo -e OBSERVER_HOST=x.x.x.y glarfs/observer-mqtt
```


# Test

```
mosquitto_sub -v -h x.x.x.x -t my/meteo/#
```
