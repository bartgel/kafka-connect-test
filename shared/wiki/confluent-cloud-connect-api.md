# Confluent Cloud Connect API

## What

In this wiki we are going to give some important details on how to use the Confluent Cloud Connect API.

[You can find more details for this api on the rest API in the Confluent documentation](https://docs.confluent.io/cloud/current/api.html).

## Keys used

You will two type of keys several keys

- Cloud API Keys
- Cluster API Keys

### Generate Cloud API Keys

You can generate Cloud API keys using 2 ways.

Through the front-end. Using the menu right, goto `Cloud API Keys` and chose `Add key`.

Using the command line:

```bash
$ confluent api-key create --resource cloud --description "a_description"
```

in scripts this will be refered as:

- CLOUD_API_KEY
- CLOUD_API_SECRET

## Generate cluster api keys

You can do this using the front end or the command line:

```bash
$ confluent api-key create --resource ${cluster-id} --description "a_description"
```

in scripts this will be refered as:

- CLUSTER_API_KEY
- CLUSTER_API_SECRET

# Authentication

You'll need the cloud api keys to connect to the servers using basic authentication

