resource "aws_vpc" "my_vpc" {
  cidr_block       = var.cidr2["vpc2_cidr"]

  tags = {
    Name = var.tags2["vpc_env"]
  }
}

resource "aws_subnet" "my_sub1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr2["sub1_cidr"]
  availability_zone = var.azs2["zone1"]
  tags = {
    Name = var.tags2["sub1_name"]
  }
}

resource "aws_subnet" "my_sub2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr2["sub2_cidr"]
  availability_zone = var.azs2["zone1"]
  tags = {
    Name = var.tags2["sub2_name"]
  }
}

resource "aws_subnet" "my_sub3" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr2["sub3_cidr"]
  availability_zone = var.azs2["zone2"]
  tags = {
    Name = var.tags2["sub3_name"]
  }
}

resource "aws_subnet" "my_sub4" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.cidr2["sub4_cidr"]
  availability_zone = var.azs2["zone2"]
  tags = {
    Name = var.tags2["sub4_name"]
  }
}