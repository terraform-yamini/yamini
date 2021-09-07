resource "aws_iam_user" "myusers" {
    for_each = toset (["tjack", "tjames", "tmadhu", "Tdave"])
    name = each.key
}