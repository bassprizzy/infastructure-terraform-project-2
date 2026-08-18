resource "aws_s3_bucket" "app" {
  bucket = "${var.project_name}-${var.environment}-app"

  tags = {
    name        = "${var.project_name}-${var.environment}-app"
    environment = var.environment
  }
}
