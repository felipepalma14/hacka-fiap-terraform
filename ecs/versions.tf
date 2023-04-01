terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.59"
    }
  }
}

provider "aws" {
  region = "us-east-1"
   alias  = "replica"

  default_tags {
    tags = {
      Name = "hackaton-demo"
    }
  }
}

# terraform {
#   backend "s3" {
#     bucket = "hackaton.terraform.bucket"
#     key    = "ecs/key"
#     region = "us-east-1"
#     assume_role_policy_arns = [
#       "arn:aws:iam::246628379447:role/terraform_github_role"
#     ]
#   }
# }