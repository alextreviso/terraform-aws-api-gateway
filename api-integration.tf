resource "aws_apigatewayv2_integration" "integration" {
  api_id           = aws_apigatewayv2_api.api_gateway.id
  description      = "Private load balancer integration"

  integration_type = "HTTP_PROXY"
  integration_uri  = var.alb_listener_arn

  integration_method = "ANY"
  connection_type    = "VPC_LINK"
  connection_id      = aws_apigatewayv2_vpc_link.vpc-link.id
}