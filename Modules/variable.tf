variable "vpc_cidr" {
  description = "cidr for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "az_1" {
  description = "AZ for public subnet 1"
  type        = string
  default     = "us-east-1a"
}

variable "az_2" {
  description = "AZ for public subnet 2"
  type        = string
  default     = "us-east-1b"
}

variable "pub_sub_cidr_1" {
  description = "cidr for public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "pub_sub_cidr_2" {
  description = "cidr for public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "route_table_cidr"{
    description = "Route Table CIDR Range"
    type        = any
    default     = "0.0.0.0/0"
}
