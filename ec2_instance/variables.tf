variable "ami" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  }

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  }

variable "instance_name" {
  description = "The name for the EC2 instance"
  type        = string
 }