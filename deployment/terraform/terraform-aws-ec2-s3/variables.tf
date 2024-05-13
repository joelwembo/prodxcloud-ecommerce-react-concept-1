variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "backend_organization" {
  type    = string
  default = "prodxcloud"
}

variable "backend_worspaces" {
  type    = string
  default = "prodxcloud"
}

variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}

variable "bucket" {
  default = "bucket"
}


variable "cidr_block" {
  default = "10.0.0.0/16"
}
variable "subnet" {
  default = "10.0.0.0/24"
}
variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-04b70fa74e45c3917"
}

variable "instance_vpc_id" {
  type    = string
  default = "vpc-002df8ccc1fdc37c0"
}

variable "instance_subnet_id" {
  type    = string
  default = "subnet-0c5ffda793d0511ec"
}

variable "instance_keyName" {
  type    = string
  default = "prodxsecure"
}

variable "instance_secgroupname" {
  description = "This is a security Group Name"
  type        = string
  default     = "prodxcloud-terraform-vault"
}

variable "instance_publicip" {
  type    = bool
  default = true
}

variable "aws_availability_zone" {
  type    = string
  default = "us-east-1b"
}


variable "ingress_rules" {
  default = {
    "my ingress rule" = {
      "description" = "For HTTP"
      "from_port"   = "80"
      "to_port"     = "80"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    },
    "my other ingress rule" = {
      "description" = "For SSH"
      "from_port"   = "22"
      "to_port"     = "22"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    },

    "Postgres port" = {
      "description" = "For HTTP hashicorp vault"
      "from_port"   = "8200"
      "to_port"     = "8200"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    },

    "Jenkins port" = {
      "description" = "For Jenkins"
      "from_port"   = "8080"
      "to_port"     = "8080"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    },

     "React Application port" = {
      "description" = "For React"
      "from_port"   = "3000"
      "to_port"     = "3000"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    },

    "Django Application port" = {
      "description" = "For Django"
      "from_port"   = "8585"
      "to_port"     = "8585"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    }

    "All Ports" = {
      "description" = "For HTTP all ports F 3000 - 65535"
      "from_port"   = "3000"
      "to_port"     = "65535"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    }
  }
  type = map(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "Security group rules"
}