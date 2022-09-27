# JDBC Sink Connector on SQL Server

Important conclusions for this Connector [can be found here](conclusions.md)

The following tests are performed:

- [JDBC Sink to Confluent Cloud using an on-premise connector](on-premise/README.md)
- [JDBC Sink to Confluent Cloud using an Cloud Managed connector](on-ccloud/README.md)

## Notes

Both are using the same codebase namely [confluentinc/kafka-connect-jdbc.git](https://github.com/confluentinc/kafka-connect-jdbc)

On Confluent cloud some properties got renamed, but it is still using the same codebase.

The on-premise connector is installed to be able to do some debugging




