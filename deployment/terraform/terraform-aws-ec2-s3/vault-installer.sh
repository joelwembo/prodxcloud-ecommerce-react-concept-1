
# Docker installation
sudo apt install apt-transport-https ca-certificates curl software-properties-common --assume-yes
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable'
apt-cache policy docker-ce
sudo apt install docker-ce --assume-yes
sudo chmod 777 /var/run/docker.sock

# sudo systemctl status docker
echo 'Docker successfully installer'

# install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "Docker Compose Installed successfully installer"


sudo apt update && sudo apt install gpg wget --assume-yes
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vault --assume-yes

##
## $ export VAULT_ADDR='http://127.0.0.1:8200'

## The unseal key and root token are displayed below in case you want to
## seal/unseal the Vault or re-authenticate.

## Unseal Key: cyUcOBRYgf6PRpAHPYLVwFEDVYwSZDyeGiLrW05WQ40=
## Root Token: hvs.dPdimWYaIxRsoIh0tedlOjsV
# export VAULT_TOKEN="hvs.0mb46CdPGEZZQ8h2c9YYsQws"

### Put Secret
# vault kv put -mount=secret prodxcloud foo=prdx-st
# vault kv put -mount=secret prodxcloud-api-key key=gf6PRpAHPYLVwFEDVYwSZDyeGiLrW05WQ40=
## Read Secret
# vault kv get -mount=secret prodxcloud-api-key
# Key value
# vault kv put kv/hello target=prodxcloud-api-key && vault kv get kv/prodxcloud-api-key