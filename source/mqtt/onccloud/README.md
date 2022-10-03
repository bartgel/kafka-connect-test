POST /connectors

url --request GET \
  --url 'https://api.confluent.cloud/connect/v1/environments/env-mvpryx/clusters//connectors/MicrosoftSqlServerSinkConnector_0/config' \
  --header 'authorization: basic ' 



curl --request POST \
  --url 'https://api.confluent.cloud/connect/v1/environments/env-mvpryx/clusters//connectors'  \
    --header 'authorization: basic |'  \
  -d @bash/mqtt.template


{
  "name": "MqttSourceConnector_0",
  "config": {
    "connector.class": "MqttSource",
    "name": "MqttSourceConnector_0",
    "kafka.auth.mode": "KAFKA_API_KEY",
    "kafka.api.key": "****************",
    "kafka.api.secret": "****************************************************************",
    "kafka.topic": "vehicle",
    "mqtt.server.uri": "tcp://mqtt.hsl.fi:1883",
    "mqtt.topics": "/hfp/v2/journey/ongoing/vp/train/#",
    "mqtt.qos": "0",
    "tasks.max": "1"
  }
}