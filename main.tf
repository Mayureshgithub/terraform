provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA5AP4Y3NXAHYLFVMS"
  secret_key = "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"
}
resource "aws_iam_user" "my" {
 name = "rohit"
}
resource "aws_iam_policy" "policy" {
  name        = "test-policy"
  description = "A test policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.my.name
  policy_arn = aws_iam_policy.policy.arn
}

  
