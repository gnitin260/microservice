#!/bin/bash 

echo "Enter type of process"
echo "i.e., install, update, uninstall"
read process

if [ "$process" = "install" ]; then
    echo "------------------------------------------------"
    helm install frontend ci-cd/chart/frontend/ -n devops
    echo "------------------------------------------------"
    helm install currencyservice ci-cd/chart/currencyservice/ -n devops
    echo "------------------------------------------------"
    helm install catalog ci-cd/chart/catalog/ -n devops
    echo "------------------------------------------------"
    helm install adservice ci-cd/chart/adservice/ -n devops
    echo "------------------------------------------------"
elif [ "$process" = "update" ]; then
    echo "------------------------------------------------"
    helm upgrade frontend ci-cd/chart/frontend/ --values ci-cd/chart/frontend/values.yaml -n devops
    echo "------------------------------------------------"
    helm upgrade currencyservice ci-cd/chart/currencyservice/ --values ci-cd/chart/currencyservice/values.yaml -n devops
    echo "------------------------------------------------"
    helm upgrade catalog ci-cd/chart/catalog/ --values ci-cd/chart/catalog/values.yaml -n devops
    echo "------------------------------------------------"
    helm upgrade adservice ci-cd/chart/adservice/ --values ci-cd/chart/adservice/values.yaml -n devops
    echo "------------------------------------------------"
elif [ "$process" = "uninstall" ]; then
    echo "------------------------------------------------"
    helm uninstall frontend -n devops
    echo "------------------------------------------------"
    helm uninstall currencyservice -n devops
    echo "------------------------------------------------"
    helm uninstall catalog -n devops
    echo "------------------------------------------------"
    helm uninstall adservice -n devops
    echo "------------------------------------------------"
else
    echo "Bad input: $process. Please use 'install', 'update', or 'uninstall'."
fi

if [ "$process" = "install" ] || [ "$process" = "update" ] || [ "$process" = "uninstall" ]; then
    echo "------------------------------------------------"
    kubectl get pods -n devops
    echo "------------------------------------------------"
    kubectl get services -n devops
    echo "------------------------------------------------"
    kubectl get serviceaccount -n devops
    echo "------------------------------------------------"
else    
    echo ""
fi