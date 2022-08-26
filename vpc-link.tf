resource "aws_apigatewayv2_vpc_link" "vpc-link" {
  name               = "${var.app_name}-vpc-link"
  subnet_ids         = var.aws_subnet_ids
  security_group_ids = [var.sg_alb_id]

  tags = {
    Name         = "${var.app_name}-vpc-link"
    environment  = var.env
  }
}