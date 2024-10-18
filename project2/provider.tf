terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.69.0"
    }
  }

}

provider "aws" {
  region  = "us-east-1"
  access_key = "AKIAZI2LHHW63PJL4JFV"          # AWS access key for authentication.
  secret_key = "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"  # AWS secret key for authentication.
 }
