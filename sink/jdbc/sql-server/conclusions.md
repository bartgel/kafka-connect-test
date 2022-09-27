# JDBC Sink SQL Server

Wat we wanted to test is how to create a user in SQL Server, that can write to a table in a schema

## Minimum setup

The minimum setup for the database [can be found in this file](shared/create-schema.sql):

## Tablename format

This is all about the property: `table.name.format`

### Expressions

Using the ${topic} expression will result in the topic name.

So a format `out_${topic}` for a topic called `my_topic` will result in a topic named `out_my_topic`

### Table name parts

The tablename format consist of 3 parts seperated by `.`. 

This has impact on 3 things:

1. Database
2. Schemaname
3. Tablename

If there is only one part defined (for example `out_topic`) then

1. Database = Default connected database
2. Schemaname = __dbo__
3. Tablename = out_topic

If there are two parts defined (for example `master.out_topic`) then

1. Database = master
2. Schemaname = __dbo__
3. Tablename = out_topic

If there are tree parts defined (for example `master.facturation.out_topic`) then

1. Database = master
2. Schemaname = facturation
3. Tablename = out_topic


## Parameters

If you use in confluent cloud the following seting:

```ini
connector.class=MicrosoftSqlServerSink
```

This will translate in the following configuration on the connector

```ini
connector_type=SINK
connector.class=io.confluent.connect.jdbc.JdbcSinkConnector
dialect.name=SqlServerDatabaseDialect
driver.class=com.microsoft.sqlserver.jdbc.SQLServerDriver
```