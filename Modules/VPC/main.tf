resource "aws_vpc" "threetiervpc"{
    #name="threetiervpc"
    cidr_block=var.vpc_cidr
}


resource "aws_subnet" "public_sub_1"{
    vpc_id=aws_vpc.threetiervpc.id
    cidr_block=var.pub_sub_cidr_1
    availability_zone=var.az_1
    tags = {
        Name = "Public Subnet AZ1"
    }
}

## resource "aws_subnet" "public_sub_2"{
  #  vpc_id=aws_vpc.threetiervpc.id
   # cidr_block=var.pub_sub_cidr_2
    #availability_zone=var.az_2
    #tags = {
     #   Name = "Public Subnet AZ2"
    #}
##}

resource "aws_internet_gateway" "igw_threetier" {
  vpc_id = aws_vpc.threetiervpc.id

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.threetiervpc.id
  route {
    cidr_block = var.route_table_cidr
    gateway_id = aws_internet_gateway.igw_threetier.id
  }
  tags = {
    Name = "Public RT"
  }
}

resource "aws_route_table_association" "public_sub_assoc_1" {
  subnet_id      = aws_subnet.public_sub_1.id
  #gateway_id     = aws_internet_gateway.igw_threetier.id
  route_table_id = aws_route_table.public_rt.id
}


