output "pub_sub_1_id"{
    value=aws_subnet.public_sub_1.id
}

#output "pub_sub_2_id"{
#    value=aws_subnet.public_sub_2.id
#}

#output "pub_sub_id"{
    #value=[aws_subnet.public_sub_1.id,aws_subnet.public_sub_2.id]
#}

output "awsvpc_id"{
    value=aws_vpc.threetiervpc.id
}