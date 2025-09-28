ls
cd
ls
cat inventory.yaml 
exit
ls
cd
ls
cat inventory.yaml 
cat > inventory.yaml 
clear
ls
ssh-copy-id ubuntu@ubuntu
ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@ubuntu
ls
cd
ls
ls -la
ssh-keygen -t rsa -b 2048
clear
ls
ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@ubuntu
clear
ls
ansible all -i inventory.yaml -m ping 
ssh-copy-id -i ~/.ssh/id_rsa.pub debian@debian2
ansible all -i inventory.yaml -m ping 
clear
ls
exit
ls
cat > inventory.yaml 
ansible all -i inventory.yaml -m ping 
ansible ubuntu -i inventory.yaml -m apt -a update_cache=true
ansible ubuntu -i inventory.yaml -m apt -a update_cache=true --become=true --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a update_cache=true --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a name=tmux --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a name=tmux,vim --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a name=tmux,inetutils --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a name=tmux,hping3 --become --ask-become-pass
ls
docker ps
ansible ubuntu -i inventory.yaml -m apt -a name=tmux,hping3 --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a name=tmux,hping3 --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a "name=tmux,hping3 state:latest" --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a "name=tmux state:latest" --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a "name=tmux,hping3 state=lastest" --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a "name=tmux,hping3 state=latest" --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a upgrade=dist --become --ask-become-pass
ansible ubuntu -i inventory.yaml -m apt -a upgrade=dist --become --ask-become-pass
ping 172.17.0.1
sudo apt install
sudo apt install inetutils
sudo apt install putils-ping
sudo apt install iputils-ping
ping 172.17.0.1
ssh tanyu@172.17.0.1
ssh -i ~/.ssh/id_rsa.pub tanyu@172.17.0.1
ls
vim inventory.yaml 
clear
ansible tanyu -m pacman -a update_cache=true -i inventory.yaml 
vim inventory.yaml 
ansible tanyu -m ping -i inventory.yaml 
vim inventory.ini 
ansible tanyu -m ping -i inventory.ini 
ssh-copy-id -i ~/.ssh/id_rsa.pub tanyu@172.17.0.1
ansible tanyu -m ping -i inventory.ini 
ansible -m ping -i inventory.ini tnayu
ansible -m ping -i inventory.ini tanyu
ansible -m ping -i inventory.ini all
ansible -m package -a name=hping3 -i inventory.ini tanyu
ansible -m apt -a update_cache=true -i inventory.ini tanyu
ansible -m service -a "name=sshd state=present" -i inventory.ini tanyu
clear
ansible-galaxy collection install geerlingguy.k8s
ls
cd ~/.ansible/
ls
cd collections/
ls
cd ansible_collections/
ls
cd geerlingguy/
ls
cd k8s/
ls
cat MANIFEST.json 
clear
ls
cat README.md 
LS
ls
cd roles
ls
ls -l
cd kubernetes/
ls
cd tak
cd tasks/
ls
cat main.yml 
clear
ls
cat node-setup.yml 
clear
pip install boto3
clear
cd
ls
cat /etc/hostname
sudo vim /etc/hostname 
clear
exit
clear
ls
restart
sudo hostnamectl 
clear
exit
clear
;s
ipconfig
cat /etc/passwd
exit
clear
ls
ping 192.168.1.70
sudo su
ping 192.168.1.70
docker
apt install docker-cli docker.io 
sudo apt install docker-cli docker.io 
sudo apt install docker 
pip install docker
python3
clear
ls
curl https://192.168.1.70:8888
wget https://192.168.1.70:8888
clear
ls
clear
ls
ansible localhost -m docker -a docker_host= tcp://192.168.1.70:8888
ansible localhost -m docker -a "docker_host=tcp://192.168.1.70:8888"
ansible localhost -m docker -a "docker_host=tcp://192.168.1.70:8888"
ansible localhost -m community.docker.docker -a "docker_host=tcp://192.168.1.70:8888"
ansible localhost -m community.docker.docker -a "docker_host=tcp://192.168.1.70:8888"
ping 192.168.1.70
ansible localhost -m community.docker.docker -a "docker_host=tcp://192.168.1.70:5555"
ansible-doc -l | grep docker
clear
ansible localhost -m docker_container -a "name=test image=hello-world docker_host=tcp://192.168.1.70:5555"
clear
ansible localhost -m docker_container -a "name=apache image=httpd docker_host=tcp://192.168.1.70:5555"
clear
ls
ls
 ls
cat ansible.cfg 
ansible debian -m setup
ssh debian@debian2
ssh-copy-id ~/.ssh/id_rsa.pub debian@debian2
ssh-copy-id -i ~/.ssh/id_rsa.pub debian@debian2
clear
ansible debian -m setup
ansible debian -m setup | grep "ansible_os_family"
ansible debian -m setup | grep "os_family"
ansible -m gather_facts debian | grep "os_family"
ansible -m gather_facts all --limit debian | grep "os_family"
ansible -m gather_facts all --limit debian | grep "distribution_version"
cat /etc/os-release 
ansible -m gather_facts all --limit debian | grep "package"
ansible -m gather_facts all --limit debian | grep "ansible_package"
ansible -m gather_facts all --limit debian | grep "apt"
