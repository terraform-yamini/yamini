resource "aws_s3_bucket" "mys3bucket" {
    for_each = {
        dev = "my-app-dev-bucket"
        qa = "my-app-qa-bucket"
        stag = "my-app-sa-bucket"
        prod = "my-app-prod-bucket"
    }
 bucket = "${each.key}-${each.value}"
 acl = "private"
 tags = {
     environment = each.key 
     bucketname = "${each.key}-${each-value}"
     eachvalue = each.value
 }  
}