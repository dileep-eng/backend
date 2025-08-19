variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0861f4e788f5069dd"
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch EC2 in"
  type        = string
  default     = "subnet-0f6f4c8ac36b22bf2"
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate"
  type        = list(string)
  default     = ["sg-0c371632d6ee81959"]
}

variable "enable_termination_protection" {
  description = "Whether to enable termination protection"
  type        = bool
  default     = true
}

variable "enable_stop_protection" {
  description = "Whether to enable stop protection"
  type        = bool
  default     = true
}

variable "instance_name" {
  description = "Tag name for the EC2 instance"
  type        = string
  default     = "Protected-EC2"
}