minikube start
eval $(minikube docker-env)
minikube addons enable metallb
minikube addons configure metallb << E
192.168.99.100
192.168.99.100
E
# kubectl delete all --all --all-namespaces

docker build -t nginx "src/nginx"
docker build -t phpmyadmin "src/phpmyadmin"
docker build -t mysql "src/mysql"
docker build -t wordpress "src/wordpress"

kubectl apply -f src/yaml
minikube dashboard