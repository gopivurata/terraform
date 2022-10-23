variable "cidr2" {
  default = {
    vpc2_cidr = "10.10.0.0/16"
    sub1_cidr = "10.10.0.0/24"
    sub2_cidr = "10.10.1.0/24"
    sub3_cidr = "10.10.2.0/24"
    sub4_cidr = "10.10.3.0/24"

  }
}

variable "tags2" {
  default = {
    vpc_env = "dev"
    sub1_name = "mysub1"
    sub2_name = "mysub2"
    sub3_name = "mysub3"
    sub4_name = "mysub4"

  }
}

variable "azs2" {
  default = {
    zone1 = "us-west-2a"
    zone2 = "us-west-2b"
  }
}