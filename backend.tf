# terraform {
#   backend "s3" {
#     bucket         = "my-terraform-state-bucket-123456"
#     key            = "openproject/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }
