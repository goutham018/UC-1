# provider "aws" {
#   alias = "east1"
#   region = "us-east-1"
# }

# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "my-terraform-state-bucket-123456" 

#   versioning {
#     enabled = true
#   }

#   lifecycle {
#     prevent_destroy = true
#   }

#   tags = {
#     Name        = "Terraform State Bucket"
#   }
# }

# resource "aws_dynamodb_table" "terraform_locks" {
#   name         = "terraform-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = {
#     Name        = "Terraform State Lock Table"
#     Environment = "terraform"
#   }
# }
