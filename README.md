## Diagrama EKS
<img src="https://github.com/fernandofmendes/eks/blob/main/documentation/EKS_Infrastructure_Diagram.svg" widht=600 weight=350 >

## Gerar chave de SSH de acesso as EC2
```sh
ssh-keygen -t rsa -b 4096
```
Localização da chave: terraform/eks/keys/

## Instalação

```sh
terraform init
```

## Aplicando

```sh
terraform apply --auto-approve
```

## Validação

```sh
terraform validate
```

## Adicionando o contexto do nosso cluster ao kubectl

```bash
aws eks --region us-east-1 update-kubeconfig --name k8s-syshero
```
k8s-syshero: É o nome do cluster


----

Criar conexão com o SpotInst

Join existing EKS Ocean

c1a873885fef8cea39dd3df1f53e9cc0045597abfeacd91b2943a8801d473666

----

Instalar metric server

Pasta /kubernetes/metrics-server
./install_metrics-server.sh
