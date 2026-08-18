output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "vpc_name" {
  description = "The name of the VPC"
  value       = aws_vpc.main.tags["name"]
}
output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}
output "public_subnet_cidr" {
  description = "The CIDR block of the public subnet"
  value       = aws_subnet.public_subnet.cidr_block
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value       = aws_internet_gateway.main.id
}
output "route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public_route_table.id
}
output "security_group_id" {
  description = "The ID of the security group for the EC2 instance"
  value       = aws_security_group.ec2.id
}
output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = aws_dynamodb_table.app.name
}

output "dynamodb_table_arn" {
  description = "ARN of the DynamoDB table"
  value       = aws_dynamodb_table.app.arn
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.app.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.app.arn
}