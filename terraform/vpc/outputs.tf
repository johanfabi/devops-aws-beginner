output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "interface_id" {
  value = aws_network_interface.foo.id
}