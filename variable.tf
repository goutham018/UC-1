variable "key_name" {
  description = "EC2 Key Pair Name"
  type        = string
}

variable "instance_type" {
  default     = "t3.micro"
  description = "EC2 instance type"
}
