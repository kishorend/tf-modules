variable "instance_name" {
  description = "The name for the EC2 instance"
  type        = string
  default     = "example-instance"  # Provide a default value here
}

variable "ami" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  }

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"  # Update with your desired instance type
}