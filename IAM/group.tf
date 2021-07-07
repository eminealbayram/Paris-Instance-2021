resource "aws_iam_user" "esma" {
  name = "esma"
}

resource "aws_iam_user" "hanife" {
  name = "hanife"
}
resource "aws_iam_group" "billing" {
  name = "billing"
}

resource "aws_iam_group_membership" "team" {
  name = "billing-membership"

  users = [
    aws_iam_user.esma.name,
    aws_iam_user.hanife.name,
  ]

  group = aws_iam_group.billing.name
}


