
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.1"
    }
  }
  backend "s3" {
    bucket = "my-terraform-state002" # replace with your bucket name
    key    = "terraform.tfstate"
    region = "us-east-1" # replace with the region of your bucket
  }
}
