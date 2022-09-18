terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.23.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAWE3QMFIUUNP44ERD"
  secret_key = "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"
}
