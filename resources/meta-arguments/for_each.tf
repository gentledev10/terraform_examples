# Using set
resource "aws_iam_user" "example1" {
  for_each = toset(["user1", "user2", "user3"])
  name     = each.key
}

# Using map
resource "aws_iam_user" "example2" {
  for_each = {
    user4 = "tag4"
    user5 = "tag5"
    user6 = "tag6"
  }
  name     = each.key
  tags     = {
    example = each.value
  }
}