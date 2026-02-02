provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "main-bucket"
    key    = "main-bucket.tfstate"
    region = "us-east-1"
  }
}