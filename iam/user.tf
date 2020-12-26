resource "aws_iam_user" "this" {
  name = "eks-build-user"

  tags = {
    Name = "eks-build-user"
  }
}

resource "aws_iam_user_policy_attachment" "this" {
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.this.arn
}

resource "aws_iam_user_policy_attachment" "temp" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}
