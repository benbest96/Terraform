resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr_block

  enable_dns_hostnames = false
  enable_dns_support   = false

  tags = {
    Name = "${var.env}-main-vpc"
  }
}

resource "aws_subnet" "net_public_subnet" {
  vpc_id     = aws_vpc.main-vpc.id
  cidr_block = var.public_subnet_cidr
  tags = {
    Name = "${var.env}-public-subnet"
  }
}

resource "aws_subnet" "net_private_subnet" {
  vpc_id     = aws_vpc.main-vpc.id
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = "${var.env}-private-subnet"
  }
}