resource "aws_s3_bucket" "myawsbucketyaminiaws" {

  # for_each Meta-Argument
  for_each = {
    dev  = "my-dappyamini-bucket"
    qa   = "my-qappyamini-bucket"
    stag = "my-sappyamini-bucket"
    prod = "my-pappyamini-bucket"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}