resource "aws_db_instance" "db1" {
    allocated_storage = 5
    engine = "mysql"
    instance_class = "db.t2.micro"
    name = "mydb1"
    username = "admin"
    password = "insecurepassword"
    skip_final_snapshot = true
}