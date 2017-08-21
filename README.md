
# Deploy do projeto

Para Deploy do projeto será necessário que tenha o Ansible já configurado no seu ambiente

* Clone do projeto
<pre>
$ https://github.com/vandocouto/graylog2.3.0-1.git
</pre> 

* Acessando o projeto

<pre>
$ cd graylog2.3.0-1/ansible/graylog/
</pre>


### Configurando o arquivos hosts
 
##### Elastic IP / Private IP
* Ajuste o IP Público logo abaixo em - [graylog]</br>
Exemplo:
<br>
<br>
[graylog]
<br>
PUBLIC IP
<br>
<br>
[all:ars]
<br>
ipint=PRIVATE IP
<br>
ipext=PUBLIC IP

#####Variávies
* Configure a variáveis graylog_pass e graylog_root_pass

graylog_pass_secret: Generate one by using for example: pwgen -N 1 -s 96

graylog_root_pass: Create one by using for example: echo -n tutoriaisgnulinux | shasum -a 256

* You can use the AWS Management Console to manage the access keys of IAM users.

accesskey: 
secretkeys:


##### Exemplo:

<pre>
[graylog]
54.196.66.95

[all:vars]

# EC2
ansible_ssh_user=ubuntu
ansible_ssh_private_key_file=../../keys/Blog-Estudo.pem
ipint=10.0.0.223
ipext=54.196.66.95

# GRAYLOG
graylog_pass_secret=TxLguExNjEhpvq5UXXZrN3fuJP9f9uMRXTvHwMnfeyinguB83MSzOYWWvRIjiIIH4PujzQqHgSn9I2TqUslLmAaTFCNqA5qx
graylog_root_pass=2617493f1cba71cb06f35c04ca148edffbb8316b2ae63dfd60fad268618f68b6

# AWS ACCESS
accesskey=AKIAJC5LNZ2E
secretkeys=uL34EnVvNGS7u3tM8FNVyJ0
</pre>

* Faça o download da chave .pem para o diretório keys 
* Ajuste a permissão para 400
<pre>
$ chmod 400 keys/Blog-Estudo.pem
</pre>
* Ajustando a instância - Install python-simplejson (informe o Public IP da instância)
<pre>
$ cd graylog2.3.0-1/ansible/graylog/
$ ansible 54.196.66.95 -i hosts -m 'raw apt-get -y install python-simplejson' -b
</pre>

* Deploy - Playbook
<pre>
$ ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts ./tasks/main.yml
</pre>


### Error!
* Em caso de erro no docker-compose pelo Ansible, basta entrar na instância e executado o comando manualmente:
<pre>
$ sudo su
# docker-compose -f /docker-compose/graylog/docker-compose.yml up -d logspout
</pre>

### Login!!!

<pre>
http://54.196.66.95
user: admin
pass: tutoriaisgnulinux
</pre>

