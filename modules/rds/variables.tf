variable "rds_vpc" {
  type = string
  default = "vpc-07031552a2e37d17a"
}

variable "ec2_sg" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
  default = [ "subnet-06eda2b2fc28658c2" , "subnet-01168986a6b9a968a" ]
}

variable "allocated_storage" {
  type = number
}

variable "db_name" {
  type = string
}

variable "engine" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "instance_class" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}