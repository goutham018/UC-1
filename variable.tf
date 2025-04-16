variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "open-project-key"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-075686beab831bb7f"
}

variable "instance_type" {
  description = "Instance type."
  type        = string
  default     = "t3.medium"
}