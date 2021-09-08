output "ec2_instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.my-ec2-vm-2.*.public_ip
}
output "ec2_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value = aws_instance.my-ec2-vm-2.*.public_dns
}
output "security_group_ids" {
  value = concat([aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id])
}
output "tags" {
  value = aws_instance.my-ec2-vm-2[*].tags
}

output "elb_dns_name" {
  value = aws_elb.elb[*].dns_name
}