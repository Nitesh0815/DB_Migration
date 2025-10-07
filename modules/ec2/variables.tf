variable "ami_id" {
  type = string
  default = "ami-052064a798f08f0d3"
}

variable "instance_type" {
  type = string 
  default = "t2.micro"
}

variable "subnet_id" {
  type = string 
  default = "subnet-06eda2b2fc28658c2"
}

variable "vpc_id" {
  type = string 
  default = "vpc-07031552a2e37d17a"
}