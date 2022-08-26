resource "aws_apigatewayv2_api" "api_gateway" {
  name          = "${var.app_name}-api-gateway"
  protocol_type = "HTTP"

  tags = {
    Name         = "${var.app_name}-api-gateway"
    environment  = var.env
  }
}