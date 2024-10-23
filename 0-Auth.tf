terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
      # version = "~> 3.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


