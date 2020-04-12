#Install Helm

curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh       #When the script finishes, you will have helm installed to /usr/local/bin/helm and tiller installed to /usr/local/bin/tiller.

vi rbac_helm.yaml
kubectl apply -f rbac_helm.yaml 
helm init --service-account tiller 
kubectl --namespace kube-system get pods    #In your list of pods, tiller-deploy will appear, as is shown in the following output:
helm create demo 

#You will find the following files and directories in demo:
#charts  Chart.yaml  templates  values.yaml

#Install the demo Helm chart under the name web with helm install:
helm install --name web ./demo


#Next, list the deployments created by the demo Helm chart with the following command:
kubectl get deploy