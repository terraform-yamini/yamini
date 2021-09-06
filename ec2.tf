
resource "aws_instance" "ec2-linux-demo" {
    ami = "ami-087c17d1fe0178315"
    instance_type = "t2.micro"
}
