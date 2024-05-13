terraform {
  backend "s3" {
    bucket         = "hashicorp-tf-vault"
    region         = "us-east-1"
    key            = "state/terraform.tfstate"
    # dynamodb_table = "data_onents_tf_lockid"
    encrypt        = true
  }
}

