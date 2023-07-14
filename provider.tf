provider "aws" {
  region = "ap-southeast-2"
}
terraform {
  backend "s3" {
    bucket = "ngr-bucket" # name of the bucket
    key = "terraform.tfstate"
    region = "ap-southeast-2" # optional
    dynamodb_table = "state-lock"
  }
}