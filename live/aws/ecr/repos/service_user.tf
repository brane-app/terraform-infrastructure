data "aws_iam_policy_document" "image_pusher" {
  statement {
    resources = [for it in aws_ecrpublic_repository.repos : it.arn]

    actions = [
      "ecr-public:BatchGetImage",
      "ecr-public:BatchCheckLayerAvailability",
      "ecr-public:CompleteLayerUpload",
      "ecr-public:GetDownloadUrlForLayer",
      "ecr-public:InitiateLayerUpload",
      "ecr-public:PutImage",
      "ecr-public:UploadLayerPart",
    ]
  }

  statement {
    resources = ["*"]

    actions = [
      "ecr-public:GetAuthorizationToken",
      "sts:GetServiceBearerToken",
    ]
  }
}

resource "aws_iam_user" "image_pusher" {
  name = "${var.app}-${var.environment}-image-pusher"
  tags = { "Name" : "${var.app}-${var.environment}-image-pusher" }

  path = "/service/"

}

resource "aws_iam_user_policy" "image_pusher" {
  name = "${var.app}-${var.environment}-image-pusher"

  user   = aws_iam_user.image_pusher.name
  policy = data.aws_iam_policy_document.image_pusher.json
}

resource "aws_iam_access_key" "image_pusher" {
  user = aws_iam_user.image_pusher.name
}
