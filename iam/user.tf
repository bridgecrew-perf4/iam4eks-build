resource "aws_iam_user" "this" {
  name = "eks-build-user"

  tags = {
    Name = "eks-build-user"
  }
}

resource "aws_iam_user_policy_attachment" "this_1" {
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.this_1.arn
}

resource "aws_iam_user_policy_attachment" "this_2" {
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.this_2.arn
}
