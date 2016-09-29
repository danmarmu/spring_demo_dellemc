variable "aws_region" {
  description = "AWS region to launch servers."
  default = "us-east-1"
}

variable "subnet1" {
  default     = "subnet-7abf4522"
}

variable "subnet2" {
  default     = "subnet-2ec93e04"
}

variable "az1" {
  default = "us-east-1a"
}

variable "az2" {
  default = "us-east-1c"
}

variable "ami" {
  default = "ami-08111162"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "keypair" {
  default = "jenkins-gliclab"
}

variable "vpc_id" {
  default = "vpc-e8fc8f8c"
}

variable "userdata" {
  default = "./userdata.sh"
}
