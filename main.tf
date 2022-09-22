resource "aws_vpc" "macvp" {
  cidr_block       = "10.50.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "macvp"
  }
}
resource "aws_subnet" "publicsubnet" {
  vpc_id     = "${aws_vpc.macvp.id}"
  cidr_block = "10.50.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "publicsubnet"
  }
}
resource "aws_subnet" "privatesubnet" {
  vpc_id     = "${aws_vpc.macvp.id}"
  cidr_block = "10.50.255.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "privatesubnet"
  }
}