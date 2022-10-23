resource "aws_vpc" "primary_vpc" {
  cidr_block       = var.cidr["vpc_cidr"]

  tags = {
    Name = var.tags["env"]
  }
}

resource "aws_subnet" "primary_subnet_1" {
  vpc_id     = aws_vpc.primary_vpc.id
  cidr_block = var.cidr["sub1_cidr"]
  availability_zone = var.azs["az1"]

  tags = {
    Name = var.tags["sub1_name"]
  }
}

resource "aws_subnet" "primary_subnet_2" {
  vpc_id     = aws_vpc.primary_vpc.id
  cidr_block = var.cidr["sub2_cidr"]
  availability_zone = var.azs["az1"]

  tags = {
    Name = var.tags["sub2_name"]
  }
}

resource "aws_subnet" "primary_subnet_3" {
  vpc_id     = aws_vpc.primary_vpc.id
  cidr_block = var.cidr["sub3_cidr"]
  availability_zone = var.azs["az2"]

  tags = {
    Name = var.tags["sub3_name"]
  }
}

resource "aws_subnet" "primary_subnet_4" {
  vpc_id     = aws_vpc.primary_vpc.id
  cidr_block = var.cidr["sub4_cidr"]
  availability_zone = var.azs["az2"]

  tags = {
    Name = var.tags["sub4_name"]
  }
}