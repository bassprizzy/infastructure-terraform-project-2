resource "aws_dynamodb_table" "app" {
  name         = "${var.project_name}-${var.environment}-app"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    name        = "${var.project_name}-${var.environment}-app"
    environment = var.environment
  }
}
