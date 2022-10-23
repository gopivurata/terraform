variable "cidr" {
  default = {
      vpc_cidr  = "192.168.0.0/16"
      sub1_cidr = "192.168.0.0/24"
      sub2_cidr = "192.168.1.0/24"
      sub3_cidr = "192.168.2.0/24"
      sub4_cidr = "192.168.3.0/24"
  }
}

variable "tags" {
  default = {
    env = "dev"
    sub1_name = "sub1"
    sub2_name = "sub2"
    sub3_name = "sub3"
    sub4_name = "sub4"
  }
}

variable "azs" {
    default = {
      az1 = "us-west-2a"
      az2 = "us-west-2b"
    }
}



