variable "region" {
  description = "The AWS region to deploy the instance."
  default     = "ap-south-1"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance."
  default     = "ami-001d198b1662bb7dd"
}

variable "instance_type" {
  description = "The type of the EC2 instance."
  default     = "t3.medium"
}

variable "subnet_id" {
  description = "The VPC subnet ID for the EC2 instance."
}

variable "key_name" {
  description = "The key pair name for the EC2 instance."
}