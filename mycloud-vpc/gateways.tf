resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.mycloud-vpc.id}"

  tags = {
    Name = "public-internet-gateway"
  }
}

resource "aws_eip" "nat" {
  vpc        = true
  depends_on = ["aws_internet_gateway.gw"]
  tags = {
    Name = "nat-gateway-ip"
  }
}

resource "aws_nat_gateway" "privatenat" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.Public_Primary.id}"

  tags = {
    Name = "private-nat-gateway"
  }
}
