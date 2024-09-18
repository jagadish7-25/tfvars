resource "aws_security_group" "allow-ssh" {
  name        = "allow-sshkk"
  description = "creating sg for terraform"

  tags = {
    Name = "alltraffic-2"
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.port
    to_port          = var.port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "terra" {
  ami                     = var.ami_id
  for_each = var.instances
  instance_type           = lookup(var.instances, terraform.workspace)
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  tags = {
    Name = terraform.workspace
  }
  
}

output "instances_info" {
  value = aws_instance.terra
} 