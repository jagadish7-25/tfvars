variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instances" {
    type = map
    default = {
        dev = "t2.micro"
        prod = "t2.micro"
        
    }
  
}

variable "port" {
    type = number
    default = "22"
  
}

variable "dname" {
  default = "chocojohns.online"
}