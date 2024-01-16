ckend.tf
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "hw4acatik" 
    key            = "terraform.tfstate"
    region         = "us-east-1" 
    encrypt        = true
  }
}

