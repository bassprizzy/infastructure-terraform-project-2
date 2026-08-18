variable "aws_region" {
  description = "Aws region where the infrastructure will be created"
  type        = string
  default     = "eu-north-1"

}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "terraform-learning"
}

variable "environment" {
  description = "deployment environment"
  type        = string
  default     = "dev"

}
variable "vpc_cidr" {
  description = "CIDR block for the vpc"
  type        = string
  default     = "10.20.0.0/16"

}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.20.1.0/24"
}

variable "internet_gateway" {
  description = "name of the internetgateway"
  type        = string
  default     = "my-internet-gateway"
}
variable "route_table_name" {
  type        = string
  default     = ""
  description = "name of the route table"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
