resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.project_name}-${var.environment}-terraform-state"

  tags = {
    name        = "${var.project_name}-${var.environment}-terraform-state"
    environment = var.environment
  }
}
