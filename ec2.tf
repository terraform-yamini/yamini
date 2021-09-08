resource "random_id" "id" {
  byte_length = 8 
}
locals {
  name = (var.name != "" ? var.name: random_id.id.hex)
  owner = var.team
  common_tags = {
    Owner = local.owner
    nametag = local.name
  }
}

resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.ec2_instance_type
 # key_name      = "terraform-key"
#	user_data = file("apache-install.sh") 
  user_data = templatefile("user_data.tmpl",{package_name = var.package_name}) 
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count = (var.high_availablity == true ? 2 : 1)
  tags = {
    "Name" = "vm-${terraform.workspace}-${count.index}"
  }
  availability_zone = var.availability_zones[count.index]
}
