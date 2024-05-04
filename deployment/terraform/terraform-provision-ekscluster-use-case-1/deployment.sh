aws eks --region us-east-1 update-kubeconfig --name prodxcloud-cluster

#  eks --region us-east-1 update-kubeconfig --name prodxcloud-cluster
#  Updated context arn:aws:eks:us-east-1:059978233428:cluster/prodxcloud-cluster in /root/.kube/config

kubectl get svc

kubectl apply -f k8s/aws-test.yaml

kubectl exec aws-cli -- aws s3api list-buckets
kubectl get pods

kubectl apply -f k8s/deployment.yaml 

kubectl apply -f k8s/public-lb.yaml
kubectl apply -f k8s/private-lb.yaml 

kubectl get pods
kubectl get services


kubectl apply -f k8s/cluster-autoscaler.yaml
# serviceaccount/cluster-autoscaler created
# clusterrole.rbac.authorization.k8s.io/cluster-autoscaler created
# role.rbac.authorization.k8s.io/cluster-autoscaler created
# clusterrolebinding.rbac.authorization.k8s.io/cluster-autoscaler created
# rolebinding.rbac.authorization.k8s.io/cluster-autoscaler created
# deployment.apps/cluster-autoscaler created
# You can verify that the autoscaler pod is up and running with the following command.
kubectl get pods -n kube-system


# kubectl expose deployment prodxcloud-store --type=LoadBalancer --port=80  --target-port=80 -n prodxcloud-store --name=prodxcloud-store

# Expose the application without namespace because we are the default namespace
kubectl expose deployment prodxcloud-store --type=LoadBalancer --port=80  --target-port=80 --name=prodxcloud-store
kubectl get services prodxcloud-store
kubectl get svc

# delete

kubectl delete -f k8s/public-lb.yaml
kubectl delete -f k8s/private-lb.yaml 
kubectl delete -f k8s/deployment-nginx.yaml 
kubectl delete -f k8s/deployment.yaml 


# multi-cluster command for manual

eksctl create cluster --name prodxcloud-store-qa --nodegroup-name ng-qa --node-type t3.medium --nodes 2
aws eks list-clusters
aws eks --region us-east-1 update-kubeconfig --name ${{ env.CLUSTER_NAME}}
kubectl apply -f /k8s/deployment-qa.yaml
kubectl expose deployment ${{ env.CLUSTER_NAME}} --type=LoadBalancer --name=${{ env.CLUSTER_SERVICE}}
kubectl get pods
kubectl get services ${{ env.CLUSTER_SERVICE}} 
c