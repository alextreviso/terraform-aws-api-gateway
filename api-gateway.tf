resource "aws_apigatewayv2_api" "api_gateway" {
  name          = "${var.app_name}-api-gateway"
  protocol_type = "HTTP"

  tags = {
    Name         = "${var.app_name}-api-gateway"
    environment  = var.env
  }
}


resource "aws_apigatewayv2_stage" "stage" {
  api_id = aws_apigatewayv2_api.api_gateway.id
  name = "$default"

  auto_deploy = true

  tags = {
    Name         = "${var.app_name}-stage"
    environment  = var.env
  }
}