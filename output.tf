output "ec2_instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.my-ec2-vm.*.public_ip
}
output "ec2_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value = aws_instance.my-ec2-vm.*.public_dns
}
output "security_group_ids" {
  value = concat([aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id])
}