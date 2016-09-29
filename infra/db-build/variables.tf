variable "aws_region" {
  description = "AWS region to launch servers."
  default = "us-east-1"
}

variable "vpc_id" {
  default = "vpc-e8fc8f8c"
}

variable "db_subnet_group" {
  default = "db-subnet"
  description = "Identifier for your DB"
}

variable "identifier" {
  default = "demo-rds"
  description = "Identifier for your DB"
}

variable "storage" {
  default = "10"
  description = "Storage size in GB"
}

variable "engine" {
  default = "mysql"
  description = "Engine type, example values mysql, postgres"
}

variable "engine_version" {
  description = "Engine version"
  default = {
    mysql = "5.6.27"
    postgres = "9.4.7"
  }
}

variable "db_port" {
  description = "Database Port"
  default = {
    mysql = 3306
    postgres = 5432
  }
}

variable "instance_class" {
  default = "db.t2.micro"
  description = "Instance class"
}

variable "db_name" {
  default = "demo"
  description = "db name"
}

variable "username" {
  default = "app"
  description = "User name"
}

variable "password" {
  default = "Od47045$Wdgj(3ar"
  description = "password"
}

variable "cidr_blocks" {
  default = "0.0.0.0/0"
  description = "CIDR for sg"
}

variable "sg_name" {
  default = "demo-rds"
  description = "Tag Name for sg"
}

