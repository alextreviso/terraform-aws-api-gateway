resource "aws_apigatewayv2_vpc_link" "vpc-link" {
  name               = "${var.app_name}-vpc-link"
  subnet_ids         = var.aws_subnet_ids

  tags = {
    Name         = "${var.app_name}-vpc-link"
    environment  = var.env
  }
}