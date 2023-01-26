
 Terraform github ansible pipeline :

```
if using amazon linux os instead of centos :

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  768  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
  769  yum install fontconfig java-11-openjdk
  777  sudo amazon-linux-extras install java-openjdk11
  778  yum install jenkins
  779  systemctl status jenkins
  780  systemctl start jenkins

```

```
--- yum install git on centos node

--- install terraform on centos host machine

give an admin role to centos host machine as it will give failure for aws configure whle building

--- install ansible on centos host machine 

sudo yum install epel-release
sudo yum install ansible

-- if using amazon linux install ansible :

sudo amazon-linux-extras install epel
sudo yum install ansible


-- vi /etc/ansible/ansible.cfg
   uncomment host_key_checking=FALSE


--- create a keypair on centos hostmachine to import a keypair named raman-import on aws ohio region to authenticate :
ssh-keygen -t rsa
-- import the public key to ohio in creation raman-import key

sripts for jenkins :


 terraform init
 terraform apply -auto-approve
 sleep 30
 ansible-playbook -i /tmp/inv -u ec2-user -b --become-method sudo web.yaml



poll the pipeleine
*****

```
