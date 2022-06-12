/root/kbox/kafka_2.13-3.2.0/bin/zookeeper-server-start.sh /root/kbox/kafka_2.13-3.2.0/config/zookeeper.properties &

sleep 3s

/root/kbox/kafka_2.13-3.2.0/bin/kafka-server-start.sh /root/kbox/kafka_2.13-3.2.0/config/server.properties &

sleep 3s

/root/kbox/kafka_2.13-3.2.0/bin/kafka-topics.sh --create --topic sandboxtopic --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 

sleep 3s

cat

while true
do
    echo "Press [CTRL + C] to stop..."
    sleep 1s
done