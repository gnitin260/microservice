#!/bin/sh 

echo "Enter type of process"
echo "[1] - Install, [2] - Update, [3] - Uninstall, [4] - Status"
read process

helm_service() {
    if [ "$process" = "1" ]; then   #install
        echo "------------------------------------------------"
        helm install frontend ci-cd/chart/frontend/ -n devops
        echo "------------------------------------------------"
        helm install currencyservice ci-cd/chart/currencyservice/ -n devops
        echo "------------------------------------------------"
        helm install catalog ci-cd/chart/catalog/ -n devops
        echo "------------------------------------------------"
        helm install adservice ci-cd/chart/adservice/ -n devops
        echo "------------------------------------------------"
        helm install cartservice ci-cd/chart/cartservice/ -n devops
        echo "------------------------------------------------"
    elif [ "$process" = "2" ]; then   #update
        echo "------------------------------------------------"
        helm upgrade frontend ci-cd/chart/frontend/ --values ci-cd/chart/frontend/values.yaml -n devops
        echo "------------------------------------------------"
        helm upgrade currencyservice ci-cd/chart/currencyservice/ --values ci-cd/chart/currencyservice/values.yaml -n devops
        echo "------------------------------------------------"
        helm upgrade catalog ci-cd/chart/catalog/ --values ci-cd/chart/catalog/values.yaml -n devops
        echo "------------------------------------------------"
        helm upgrade adservice ci-cd/chart/adservice/ --values ci-cd/chart/adservice/values.yaml -n devops
        echo "------------------------------------------------"
        helm upgrade cartservice ci-cd/chart/cartservice/ --values ci-cd/chart/cartservice/values.yaml -n devops
        echo "------------------------------------------------"
    elif [ "$process" = "3" ]; then    #uninstall
        echo "------------------------------------------------"
        helm uninstall frontend -n devops
        echo "------------------------------------------------"
        helm uninstall currencyservice -n devops
        echo "------------------------------------------------"
        helm uninstall catalog -n devops
        echo "------------------------------------------------"
        helm uninstall adservice -n devops
        echo "------------------------------------------------"
        helm uninstall cartservice -n devops
        echo "------------------------------------------------"
    else
        echo "Bad input: $process. Please use 'install', 'update', or 'uninstall'."
    fi

    if [ "$process" = "1" ] || [ "$process" = "2" ] || [ "$process" = "3" ] || [ "$process" = "4" ]; then
        echo "------------------------------------------------"
        echo "------------------------------------------------"
        echo "------------------------------------------------"
        kubectl get pods -n devops
        echo "------------------------------------------------"
        echo "------------------------------------------------"
        echo "------------------------------------------------"
        kubectl get services -n devops
        echo "------------------------------------------------"
        echo "------------------------------------------------"
        echo "------------------------------------------------"
        kubectl get serviceaccount -n devops
        echo "------------------------------------------------"
        echo "------------------------------------------------"
        echo "------------------------------------------------"
    else    
        echo ""
    fi
}

helm_service # helm_sevice function call