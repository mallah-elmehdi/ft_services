# minikube start
# eval $(minikube docker-env)
# minikube addons enable metallb
# minikube addons configure metallb << E
# 192.168.99.100
# 192.168.99.100
# E

kubectl delete deployment grafana mysql nginx phpmyadmin wordpress 
kubectl delete service grafana-service mysql-service nginx-service phpmyadmin-service wordpress-service

docker rmi -f $(docker images -a -q)

docker build -t nginx "src/nginx"
docker build -t phpmyadmin "src/phpmyadmin"
docker build -t mysql "src/mysql"
docker build -t wordpress "src/wordpress"
docker build -t grafana "src/grafana"
# docker build -t influxdb "src/influxdb"

kubectl apply -f src/yaml
minikube dashboard