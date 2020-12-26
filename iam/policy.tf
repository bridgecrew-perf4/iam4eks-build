data "aws_iam_policy_document" "this" {
  # EKS Full Access
  statement {
    effect = "Allow"
    actions = "eks:*"
    resources = "*"
  }
}


resource "aws_iam_policy" "this" {
  name   = "EKSBuildPolicy"
  path   = "/"
  policy = data.aws_iam_policy_document.this.json
}
