resource "aws_s3_bucket" "myawsbucketyaminiaws123" {

  # for_each Meta-Argument
  for_each = {
    dev  = "my-dappyamini123-bucket"
    qa   = "my-qappyamini123-bucket"
    stag = "my-sappyamini123-bucket"
    prod = "my-pappyamini123-bucket"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}