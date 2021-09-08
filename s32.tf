resource "aws_s3_bucket" "mybucketquiz" {
    bucket = "state-import-bucket"
    acl = "private"
    force_destroy = false
}