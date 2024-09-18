module "newec2" {
  source = "../terra-ec2"
  instance_count = "1"
  instance_type = "t3.micro"
}
