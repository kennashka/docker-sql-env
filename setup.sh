#!/bin/bash

sudo docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=Hack12345!' \
   -p 1401:1433 --name kenyadb \
   -d microsoft/mssql-server-linux:2017-latest

sudo docker exec -it kenyadb "bash"

# /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Hack12345!'

# ip address 127.0.0.1

# whereis sqlcmd

# cd /opt/mssql-tools/bin

sqlcmd -S 0.0.0.0,1401 -U SA -P 'Hack12345!'
