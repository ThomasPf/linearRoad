sudo docker run -v /home/tpfann/linearRoad/redis/7000/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-0 redis redis-server /usr/local/etc/redis/redis.conf
sudo docker run -v /home/tpfann/linearRoad/redis/7001/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-1 redis redis-server /usr/local/etc/redis/redis.conf
sudo docker run -v /home/tpfann/linearRoad/redis/7002/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-2 redis redis-server /usr/local/etc/redis/redis.conf
sudo docker run -v /home/tpfann/linearRoad/redis/7003/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-3 redis redis-server /usr/local/etc/redis/redis.conf
sudo docker run -v /home/tpfann/linearRoad/redis/7004/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-4 redis redis-server /usr/local/etc/redis/redis.conf
sudo docker run -v /home/tpfann/linearRoad/redis/7005/redis.conf:/usr/local/etc/redis/redis.conf -d --net=host --name myredis-5 redis redis-server /usr/local/etc/redis/redis.conf

redis-cli --cluster create 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 --cluster-replicas 1