resource "aws_s3_bucket" "state" {
  bucket = "${var.app}-${var.environment}-aws-terraform-state"
}
