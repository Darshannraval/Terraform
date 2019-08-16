terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraformmy"
    key     = "new/base-infrastructure-tf-state.json"
    region  = "us-east-2"
  }
}

