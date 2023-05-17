variable "vpc_cidr" {
  description = "cidr for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "sub_vpc_id" {
  description = "vpc id for public subnet 1"
  type        = string
  default     = "aws_vpc.threetiervpc.id"
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
  default     = "10.0.0.0/24"
}

variable "pub_sub_cidr_2" {
  description = "cidr for public subnet 2"
  type        = string
  default     = "10.0.3.0/24"
}

variable "route_table_IG_id" {
  description = "IGW id for Route Table"
  type        = string
  default     = "aws_internet_gateway.igw_threetier.id"
}

variable "route_table_cidr" {
  description = "Route Table CIDR Range"
  type        = any
  default     = "0.0.0.0/0"
}