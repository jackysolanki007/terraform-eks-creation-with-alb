output "public_subnets" {
  value = aws_subnet.public_subnet[*].id
}

output "private_subnets" {
  value = aws_subnet.private_subnet[*].id
}

output "sg_group" {
  value = aws_security_group.sg_group.id
}

output "my_vpc" {
  value = aws_vpc.my_vpc.id
}