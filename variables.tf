variable "vpc_name" {
  description = "This is the VPC name"
  type        = string
}

variable "vpc_cidr" {
  description = "This is the CIDR of the VPC"
}

variable "cidr_public" {
  description = "This is the CIDR for the public subnet"
}

variable "cidr_private" {
  description = "This is the CIDR for the private subnet"
}

variable "cidr_data" {
  description = "This is the CIDR for the data subnet"
}