resource "aws_instance" "webinstance" {
    ami = "ami-0915bcb5fa77e4892"
    instance_type = "t2.micro"
    tags = {
        "Name" = "web-3"
    }
    lifecycle {
        prevent_destroy = true
    }
}