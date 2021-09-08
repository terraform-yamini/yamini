resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.ec2_instance_type
 # key_name      = "terraform-key"
#	user_data = file("apache-install.sh") 
  user_data = templatefile("user_data.tmpl",{package_name = var.package_name}) 
  count = terraform.workspace == "default" ? 2 : 1
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "vm-${terraform.workspace}-${count.index}"
  }
}
