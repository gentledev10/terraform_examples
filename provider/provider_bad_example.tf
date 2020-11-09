terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "ap-northeast-2"
  # Hard-coding credentials is not recommended
  access_key = "XXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXX"
}
