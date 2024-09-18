resource "aws_instance" "terra" {
  ami                     = "ami-0b4f379183e5706b9"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-09c956a01686bdc1d"]

  tags = {
    Name = "terra"
  }


  
}