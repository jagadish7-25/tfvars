resource "aws_instance" "terra" {
  ami                     = var.ami
  instance_type           = var.instance_type
  count = var.instance_count
  vpc_security_group_ids = ["sg-09c956a01686bdc1d"]

  tags = {
    Name = "terra"
  }


  
}