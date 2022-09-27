# Setup datagen connector on Confluent cloud

To setup the datagen connector go to the connect menu and select the datagen connector:

![Datagen connector](shared/img/datagen-select.png)

Then you need to select or create a source topic:

![Source topic](shared/img/datagen-select-topic.png)

In the kafka credentials stap add the CLUSTER_API_KEY and CLUSTER_API_SECRET as provided in the previous step

![kafka credentials](shared/img/datagen-kafka-credentials.png)

and select AVRO and clickviews in the following step:

![source](shared/img/datagen-source.png)

# Reference by

This page is reference by:

- [on confluent cloud](on-ccloud/README.md)
- [on premise](on-premise/README.md)