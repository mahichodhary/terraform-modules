module "vpc" {
  source   = "./Modules/VPC"
  vpc_cidr = var.vpc_cidr
  # sub_vpc_id=var.sub_vpc_id
  az_1             = var.az_1
  az_2             = var.az_2
  pub_sub_cidr_1   = var.pub_sub_cidr_1
  pub_sub_cidr_2   = var.pub_sub_cidr_2
  route_table_cidr = var.route_table_cidr
}
  
  #
