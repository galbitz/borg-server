# borg-server

## Pre-execution steps
* Create linode API token https://cloud.linode.com/profile/tokens 
* Generate ssh keypair: `ssh-keygen -t rsa`
* Add keypair to current account
* create terraform/terraform.tfvars file. Template:
```
token = "linode token goes here"
authorized_keys = "previously create ssh key's public key... starting with ssh-rsa"
root_pass ="CaeBUqTUsf2i3rW8vMAZ"
```
* install terraform
* install ansible

## Creating Linode server
`terraform init`

`terraform apply`

## Configuring server
`ansible-playbook install-webserver.yml`

## Notes
* DNS A record needs to be updated using the IP from /ansible/hosts
