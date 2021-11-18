resource "aws_s3_bucket" "state" {
  bucket = "${var.app}-${var.environment}-acme-terraform-state"
}
