resource "aws_s3_bucket" "myawsbucketyaminiaws123890" {

  # for_each Meta-Argument
  for_each = {
    dev  = "my-dappyamini123678-bucket"
    qa   = "my-qappyamini123678-bucket"
    stag = "my-sappyamini123678-bucket"
    prod = "my-pappyamini123678-bucket"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}