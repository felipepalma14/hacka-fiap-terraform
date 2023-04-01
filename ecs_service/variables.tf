variable "app_count" {
  type = number
  default = 1
}

variable "vpc_id" {
  type = string
  default = "vpc-02415d885e8a80d2c"
}

variable "private_subnets" {
    type = list(string)
    default = ["subnet-018abb614ae38dc0a", "subnet-0bef0629f7dc22820"]
}
variable "public_subnets" {
    type = list(string)
    default = ["subnet-0d0266c65bc3bbe05", "subnet-0657a294de4178831"]
}


