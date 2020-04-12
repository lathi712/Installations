#Install kubectl

#First, make sure that your system’s package manager can access packages over HTTPS with apt-transport-https:
apt-get update
apt-get install apt-transport-https

#Next, in order to ensure the kubectl download is valid, add the GPG key for the official Google repository to your system:
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

#Once you have added the GPG key, create the file /etc/apt/sources.list.d/kubernetes.list by opening it in your text editor:
vi /etc/apt/sources.list.d/kubernetes.list

#Once this file is open, add the following line:
deb http://apt.kubernetes.io/ kubernetes-xenial main

#Finally, update the source list for APT and install kubectl
apt-get update
apt-get install -y kubectl



