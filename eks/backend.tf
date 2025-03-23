terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "srikanthkumar-s3-demo-xyz" # change this
    key            = "saisree/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "srikanth-lock"
  }
}

provider "aws" {
  region  = var.aws-region
}
