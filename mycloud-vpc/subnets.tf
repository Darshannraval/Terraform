

resource "aws_subnet" "Private_Primary" {
  vpc_id            = "${aws_vpc.mycloud-vpc.id}"
  cidr_block        = "${local.subnet_private_primary}"
  availability_zone = "${local.primary_az}"

  tags = {
    Name = "Private_Primary"
  }
}

resource "aws_subnet" "Private_Secondary" {
  vpc_id            = "${aws_vpc.mycloud-vpc.id}"
  cidr_block        = "${local.subnet_private_secondary}"
  availability_zone = "${local.secondary_az}"

  tags = {
    Name = "Private_Secondary"
  }
}

resource "aws_subnet" "Private_Tertiary" {
  vpc_id            = "${aws_vpc.mycloud-vpc.id}"
  cidr_block        = "${local.subnet_private_tertiary}"
  availability_zone = "${local.tertiary_az}"

  tags = {
    Name = "Private_Tertiary"
  }
}

resource "aws_subnet" "Public_Primary" {
  vpc_id            = "${aws_vpc.mycloud-vpc.id}"
  cidr_block        = "${local.subnet_public_primary}"
  availability_zone = "${local.primary_az}"

  tags = {
    Name = "Public_Primary"
  }
}
resource "aws_subnet" "Public_Secondary" {
  vpc_id            = "${aws_vpc.mycloud-vpc.id}"
  cidr_block        = "${local.subnet_public_secondary}"
  availability_zone = "${local.secondary_az}"

  tags = {
    Name = "Public_Secondary"
  }
}

resource "aws_subnet" "Public_Tertiary" {
  vpc_id            = "${aws_vpc.mycloud-vpc.id}"
  cidr_block        = "${local.subnet_public_tertiary}"
  availability_zone = "${local.tertiary_az}"

  tags = {
    Name = "Public_Tertiary"
  }
}
