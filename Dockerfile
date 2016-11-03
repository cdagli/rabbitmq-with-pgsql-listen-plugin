FROM rabbitmq:3.6.5
RUN apt-get -y update
RUN apt-get -y install unzip
COPY pgsql-listen-exchange-0.3.0-v3.5.x.zip /
RUN unzip pgsql-listen-exchange-0.3.0-v3.5.x.zip -d plugins/
RUN rabbitmq-plugins enable --offline pgsql_listen_exchange