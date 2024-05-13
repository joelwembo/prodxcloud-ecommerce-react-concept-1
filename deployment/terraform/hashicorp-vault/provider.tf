terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = data.vault_generic_secret.awscredentials.data["access_key"]
  secret_key = data.vault_generic_secret.awscredentials.data["secret_key"]
#   token = data.vault_generic_secret.awscredentials.data["security_token"]
}