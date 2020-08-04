FROM library/rabbitmq:3.7.26-management

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
  curl \
  nano \
  unzip
RUN curl https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip > rabbitmq_delayed_message_exchange.zip && \
unzip rabbitmq_delayed_message_exchange.zip && \
rm -f rabbitmq_delayed_message_exchange.zip && \
mv rabbitmq_delayed_message_exchange-20171201-3.7.x.ez plugins/

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange rabbitmq_management rabbitmq_peer_discovery_common rabbitmq_top