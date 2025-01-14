kubectl create namespace devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/frontend/deployment.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/frontend/service.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/frontend/serviceaccount.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/frontend/configMap.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/currencyservice/deployment.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/currencyservice/service.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/currencyservice/serviceaccount.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/currencyservice/configMap.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/catalog/deployment.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/catalog/service.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/catalog/serviceaccount.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/adservice/deployment.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/adservice/service.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/adservice/serviceaccount.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/cartservice/deployment.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/cartservice/service.yaml -n devops
kubectl apply -f /home/ubuntu/k8/microservice/k8/cartservice/serviceaccount.yaml -n devops
kubectl get pods -n devops
kubectl get services -n devops
kubectl get serviceaccount -n devops
