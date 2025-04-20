variable "region" {
  default = "ca-central-1"
}

variable "vpc_cidr_block" {
  default = "10.100.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.100.10.0/24"
}

variable "private_subnet_cidr" {
  default = "10.100.30.0/24"
}
variable "env" {
  default = "dev"
}

variable "team" {
  default = "BANK123"
}

variable "project" {
  default = "WebAPP"
}