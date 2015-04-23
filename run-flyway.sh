#!/bin/bash

export URL=jdbc:mysql://${DB_PORT_3306_TCP_ADDR}:${DB_PORT_3306_TCP_PORT}/${DB_ENV_MYSQL_DATABASE}

/opt/flyway/flyway \
	-url=$URL \
	-user=$DB_ENV_MYSQL_USER \
	-password=$DB_ENV_MYSQL_PASSWORD \
	-locations=filesystem:/locations \
	$@