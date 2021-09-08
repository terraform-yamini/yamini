resource "aws_elb" "elb" {
    name =  "my-elb"
    listener {
        instance_port = 80
        instance_portocol = "http"
        lb_port = 80
        lb_protocol = "http"
    }
    health_check {
        healthy_threshold = 2
        unhealthy_threshold = 2
        timeout = 3
        target = "http:80/"
        interval = 30
    }
    idle_timeout = 400
    connection_draining = true 
    connection_draining_timeout = 400
    instances = aws_instance.my-ec2-vm[*].id 
    count = (var.highavailabitity == true ? 1 : 0)
    availablity_zones = var.availability_zones
    tags = local.common_tags
}