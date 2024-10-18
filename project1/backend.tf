terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.69.0"
    }
  }

  backend "s3" {
    bucket = "my-tf-test-bucket098098098080"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

}
