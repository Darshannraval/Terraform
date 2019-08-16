variable "vpc_cidr" {
  default     = "10.0.0.0/21"
  description = "CIDR for the whole VPC"
}
data "aws_availability_zones" "available" {
  state = "available"
}


# This is set to local because TF has some odd variable rules
locals {
  primary_az               = "${data.aws_availability_zones.available.names[0]}"
  secondary_az             = "${data.aws_availability_zones.available.names[1]}"
  tertiary_az              = "${data.aws_availability_zones.available.names[2]}"
  subnet_private_primary   = "${cidrsubnet("${var.vpc_cidr}", 3, 0)}"
  subnet_private_secondary = "${cidrsubnet("${var.vpc_cidr}", 3, 1)}"
  subnet_private_tertiary  = "${cidrsubnet("${var.vpc_cidr}", 3, 2)}"
  subnet_public_primary    = "${cidrsubnet("${var.vpc_cidr}", 3, 3)}"
  subnet_public_secondary  = "${cidrsubnet("${var.vpc_cidr}", 3, 4)}"
  subnet_public_tertiary   = "${cidrsubnet("${var.vpc_cidr}", 3, 5)}"
}




variable "default-destination" {
  default = "0.0.0.0/0"
}

variable "name" {

}



