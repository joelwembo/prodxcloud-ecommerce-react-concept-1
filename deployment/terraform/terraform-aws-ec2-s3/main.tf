# Terraform provision AWS EC2 instance with Terraform Cloud Management

variable "awsprops" {
  type = map(any)
  default = {
    region       = "us-east-1"
    vpc          = "vpc-002df8ccc1fdc37c0"
    ami          = "ami-04b70fa74e45c3917"
    itype        = "t2.medium"
    subnet       = "subnet-0c5ffda793d0511ec"
    publicip     = true
    keyname      = "prodxsecure"
    secgroupname = "prodxcloud-terraform-vault"
  }
}



// AMI Security group setting using HashiCorp Configuration Language (HCL)
resource "aws_security_group" "prod-sec-sg" {
  name        = var.instance_secgroupname
  description = var.instance_secgroupname
  vpc_id      = var.instance_vpc_id

  // To Allow SSH Transport

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      description = lookup(ingress.value, "description", null)
      from_port   = lookup(ingress.value, "from_port", null)
      to_port     = lookup(ingress.value, "to_port", null)
      protocol    = lookup(ingress.value, "protocol", null)
      cidr_blocks = lookup(ingress.value, "cidr_blocks", null)
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "allow_tls"
  }

  lifecycle {
    create_before_destroy = true
  }
}


# instance identity
resource "aws_instance" "project-iac" {
  ami                         = lookup(var.awsprops, "ami")
  instance_type               = lookup(var.awsprops, "itype")
  subnet_id                   = lookup(var.awsprops, "subnet") #FFXsubnet2
  associate_public_ip_address = lookup(var.awsprops, "publicip")
  key_name                    = lookup(var.awsprops, "keyname")


  vpc_security_group_ids = [
    aws_security_group.prod-sec-sg.id
  ]
  root_block_device {
    delete_on_termination = true
    volume_size           = 50
    volume_type           = "gp2"
  }
  tags = {
    Name        = "prodxcloud-aws-ec2-lab-1"
    Environment = "DEV"
    OS          = "UBUNTU"
    Managed     = "PRODXCLOUD"
  }

  provisioner "file" {
    source      = "vault-installer.sh"
    destination = "/tmp/vault-installer.sh"

  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/vault-installer.sh",
      "sh /tmp/vault-installer.sh"
    ]

  }
  depends_on = [aws_security_group.prod-sec-sg]


  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("./prodxsecure.pem")
  }
}


output "ec2instance" {
  value = aws_instance.project-iac.public_ip
}

