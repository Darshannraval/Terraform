provider "aws" {
  region  = "ap-south-1"
  version = "~> 2.19"
}

module "flourish-india-vpc" {
  vpc_cidr = "10.42.0.0/21"
  source   = "./mycloud-vpc"
  name     = "india-vpc"
}
