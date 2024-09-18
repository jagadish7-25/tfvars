# Define a variable for the instance type
variable "instance_type" {
  description = "Type of instance to create"
  type        = string
  default     = "t2.micro"
}

# Define a variable for the AMI ID
variable "ami" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default = "ami-0b4f379183e5706b9"
}

# Define a variable for the number of instances
variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 2
}
