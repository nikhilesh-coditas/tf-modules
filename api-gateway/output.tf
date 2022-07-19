output "api_gateway" {
  value = aws_api_gateway_rest_api.this
}

  # # aws_api_gateway_authorizer.authorizer will be created
  # + resource "aws_api_gateway_authorizer" "authorizer" {
  #     + arn                              = (known after apply)
  #     + authorizer_result_ttl_in_seconds = 300
  #     + authorizer_uri                   = (known after apply)
  #     + id                               = (known after apply)
  #     + identity_source                  = "method.request.header.Authorization"
  #     + name                             = "lambda-auth"
  #     + rest_api_id                      = (known after apply)
  #     + type                             = "TOKEN"
  #   }

  # # aws_iam_role.lambda_role will be created
  # + resource "aws_iam_role" "lambda_role" {
  #     + arn                   = (known after apply)
  #     + assume_role_policy    = jsonencode(
  #           {
  #             + Statement = [
  #                 + {
  #                     + Action    = "sts:AssumeRole"
  #                     + Effect    = "Allow"
  #                     + Principal = {
  #                         + Service = "lambda.amazonaws.com"
  #                       }
  #                     + Sid       = ""
  #                   },
  #               ]
  #             + Version   = "2012-10-17"
  #           }
  #       )
  #     + create_date           = (known after apply)
  #     + force_detach_policies = false
  #     + id                    = (known after apply)
  #     + managed_policy_arns   = (known after apply)
  #     + max_session_duration  = 3600
  #     + name                  = "iam_for_lambda"
  #     + name_prefix           = (known after apply)
  #     + path                  = "/"
  #     + tags_all              = (known after apply)
  #     + unique_id             = (known after apply)

  #     + inline_policy {
  #         + name   = (known after apply)
  #         + policy = (known after apply)
  #       }
  #   }

  # # aws_lambda_function.authorizer will be created
  # + resource "aws_lambda_function" "authorizer" {
  #     + architectures                  = (known after apply)
  #     + arn                            = (known after apply)
  #     + filename                       = "D:\\terraform\\projects\\bython\\python\\test_lambda.zip"
  #     + function_name                  = "test_function"
  #     + handler                        = "exports.example"
  #     + id                             = (known after apply)
  #     + invoke_arn                     = (known after apply)
  #     + last_modified                  = (known after apply)
  #     + memory_size                    = 128
  #     + package_type                   = "Zip"
  #     + publish                        = false
  #     + qualified_arn                  = (known after apply)
  #     + reserved_concurrent_executions = -1
  #     + role                           = (known after apply)
  #     + runtime                        = "python3.8"
  #     + signing_job_arn                = (known after apply)
  #     + signing_profile_version_arn    = (known after apply)
  #     + source_code_hash               = (known after apply)
  #     + source_code_size               = (known after apply)
  #     + tags_all                       = (known after apply)
  #     + timeout                        = 3
  #     + version                        = (known after apply)

  #     + ephemeral_storage {
  #         + size = (known after apply)
  #       }

  #     + tracing_config {
  #         + mode = (known after apply)
  #       }
  #   }

  # # aws_lambda_function.test_lambda will be created
  # + resource "aws_lambda_function" "test_lambda" {
  #     + architectures                  = (known after apply)
  #     + arn                            = (known after apply)
  #     + filename                       = "D:\\terraform\\projects\\bython\\python\\test_lambda.zip"
  #     + function_name                  = "test_lambda"
  #     + handler                        = "index.handler"
  #     + id                             = (known after apply)
  #     + invoke_arn                     = (known after apply)
  #     + last_modified                  = (known after apply)
  #     + memory_size                    = 128
  #     + package_type                   = "Zip"
  #     + publish                        = false
  #     + qualified_arn                  = (known after apply)
  #     + reserved_concurrent_executions = -1
  #     + role                           = (known after apply)
  #     + runtime                        = "python3.8"
  #     + signing_job_arn                = (known after apply)
  #     + signing_profile_version_arn    = (known after apply)
  #     + source_code_hash               = (known after apply)
  #     + source_code_size               = (known after apply)
  #     + tags_all                       = (known after apply)
  #     + timeout                        = 3
  #     + version                        = (known after apply)

  #     + ephemeral_storage {
  #         + size = (known after apply)
  #       }

  #     + tracing_config {
  #         + mode = (known after apply)
  #       }
  #   }

  # # aws_lambda_function.test_lambda2 will be created
  # + resource "aws_lambda_function" "test_lambda2" {
  #     + architectures                  = (known after apply)
  #     + arn                            = (known after apply)
  #     + filename                       = "D:\\terraform\\projects\\bython\\python\\test_lambda.zip"
  #     + function_name                  = "test_lambda2"
  #     + handler                        = "index.handler"
  #     + id                             = (known after apply)
  #     + invoke_arn                     = (known after apply)
  #     + last_modified                  = (known after apply)
  #     + memory_size                    = 128
  #     + package_type                   = "Zip"
  #     + publish                        = false
  #     + qualified_arn                  = (known after apply)
  #     + reserved_concurrent_executions = -1
  #     + role                           = (known after apply)
  #     + runtime                        = "python3.8"
  #     + signing_job_arn                = (known after apply)
  #     + signing_profile_version_arn    = (known after apply)
  #     + source_code_hash               = (known after apply)
  #     + source_code_size               = (known after apply)
  #     + tags_all                       = (known after apply)
  #     + timeout                        = 3
  #     + version                        = (known after apply)

  #     + ephemeral_storage {
  #         + size = (known after apply)
  #       }

  #     + tracing_config {
  #         + mode = (known after apply)
  #       }
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_integration.this["get-user"] will be created
  # + resource "aws_api_gateway_integration" "this" {
  #     + cache_namespace         = (known after apply)
  #     + connection_type         = "INTERNET"
  #     + http_method             = "GET"
  #     + id                      = (known after apply)
  #     + integration_http_method = "POST"
  #     + passthrough_behavior    = (known after apply)
  #     + resource_id             = (known after apply)
  #     + rest_api_id             = (known after apply)
  #     + timeout_milliseconds    = 29000
  #     + type                    = "AWS_PROXY"
  #     + uri                     = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_integration.this["id"] will be created
  # + resource "aws_api_gateway_integration" "this" {
  #     + cache_namespace         = (known after apply)
  #     + connection_type         = "INTERNET"
  #     + http_method             = "POST"
  #     + id                      = (known after apply)
  #     + integration_http_method = "POST"
  #     + passthrough_behavior    = (known after apply)
  #     + resource_id             = (known after apply)
  #     + rest_api_id             = (known after apply)
  #     + timeout_milliseconds    = 29000
  #     + type                    = "AWS_PROXY"
  #     + uri                     = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method.this["get-user"] will be created
  # + resource "aws_api_gateway_method" "this" {
  #     + api_key_required = false
  #     + authorization    = "CUSTOM"
  #     + authorizer_id    = (known after apply)
  #     + http_method      = "GET"
  #     + id               = (known after apply)
  #     + resource_id      = (known after apply)
  #     + rest_api_id      = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method.this["id"] will be created
  # + resource "aws_api_gateway_method" "this" {
  #     + api_key_required = false
  #     + authorization    = "CUSTOM"
  #     + authorizer_id    = (known after apply)
  #     + http_method      = "POST"
  #     + id               = (known after apply)
  #     + resource_id      = (known after apply)
  #     + rest_api_id      = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this["get-user"] will be created
  # + resource "aws_api_gateway_method_response" "this" {
  #     + http_method = "GET"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "200"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this["id"] will be created
  # + resource "aws_api_gateway_method_response" "this" {
  #     + http_method = "POST"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "200"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this_400["get-user"] will be created
  # + resource "aws_api_gateway_method_response" "this_400" {
  #     + http_method = "GET"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "400"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this_400["id"] will be created
  # + resource "aws_api_gateway_method_response" "this_400" {
  #     + http_method = "POST"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "400"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this_403["get-user"] will be created
  # + resource "aws_api_gateway_method_response" "this_403" {
  #     + http_method = "GET"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "403"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this_403["id"] will be created
  # + resource "aws_api_gateway_method_response" "this_403" {
  #     + http_method = "POST"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "403"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this_404["get-user"] will be created
  # + resource "aws_api_gateway_method_response" "this_404" {
  #     + http_method = "GET"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "404"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_method_response.this_404["id"] will be created
  # + resource "aws_api_gateway_method_response" "this_404" {
  #     + http_method = "POST"
  #     + id          = (known after apply)
  #     + resource_id = (known after apply)
  #     + rest_api_id = (known after apply)
  #     + status_code = "404"
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_resource.this["get-user"] will be created
  # + resource "aws_api_gateway_resource" "this" {
  #     + id          = (known after apply)
  #     + parent_id   = (known after apply)
  #     + path        = (known after apply)
  #     + path_part   = "get-user"
  #     + rest_api_id = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_resource.this["id"] will be created
  # + resource "aws_api_gateway_resource" "this" {
  #     + id          = (known after apply)
  #     + parent_id   = "get-user"
  #     + path        = (known after apply)
  #     + path_part   = "id"
  #     + rest_api_id = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_resource.this["post-user"] will be created
  # + resource "aws_api_gateway_resource" "this" {
  #     + id          = (known after apply)
  #     + parent_id   = (known after apply)
  #     + path        = (known after apply)
  #     + path_part   = "post-user"
  #     + rest_api_id = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_api_gateway_rest_api.this will be created
  # + resource "aws_api_gateway_rest_api" "this" {
  #     + api_key_source               = "HEADER"
  #     + arn                          = (known after apply)
  #     + binary_media_types           = []
  #     + created_date                 = (known after apply)
  #     + description                  = (known after apply)
  #     + disable_execute_api_endpoint = (known after apply)
  #     + execution_arn                = (known after apply)
  #     + id                           = (known after apply)
  #     + minimum_compression_size     = -1
  #     + name                         = "dev_connect-360_test"
  #     + policy                       = (known after apply)
  #     + root_resource_id             = (known after apply)
  #     + tags                         = {
  #         + "Can_be_deleted"          = "true"
  #         + "Created_using_terraform" = "true"
  #         + "Environment"             = "dev"
  #         + "Product"                 = "connect-360"
  #         + "Use_case"                = "test"
  #       }
  #     + tags_all                     = {
  #         + "Can_be_deleted"          = "true"
  #         + "Created_using_terraform" = "true"
  #         + "Environment"             = "dev"
  #         + "Product"                 = "connect-360"
  #         + "Use_case"                = "test"
  #       }

  #     + endpoint_configuration {
  #         + types            = [
  #             + "REGIONAL",
  #           ]
  #         + vpc_endpoint_ids = (known after apply)
  #       }
  #   }

  # # module.aws_api_gateway_rest_api.aws_lambda_permission.this["get-user"] will be created
  # + resource "aws_lambda_permission" "this" {
  #     + action              = "lambda:InvokeFunction"
  #     + function_name       = "test_lambda"
  #     + id                  = (known after apply)
  #     + principal           = "apigateway.amazonaws.com"
  #     + source_arn          = (known after apply)
  #     + statement_id        = "AllowAPIGatewayInvoke"
  #     + statement_id_prefix = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.aws_lambda_permission.this["id"] will be created
  # + resource "aws_lambda_permission" "this" {
  #     + action              = "lambda:InvokeFunction"
  #     + function_name       = "test_lambda2"
  #     + id                  = (known after apply)
  #     + principal           = "apigateway.amazonaws.com"
  #     + source_arn          = (known after apply)
  #     + statement_id        = "AllowAPIGatewayInvoke"
  #     + statement_id_prefix = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["get-user"].aws_api_gateway_integration._ will be created
  # + resource "aws_api_gateway_integration" "_" {
  #     + cache_namespace      = (known after apply)
  #     + connection_type      = "INTERNET"
  #     + content_handling     = "CONVERT_TO_TEXT"
  #     + http_method          = "OPTIONS"
  #     + id                   = (known after apply)
  #     + passthrough_behavior = (known after apply)
  #     + request_templates    = {
  #         + "application/json" = jsonencode(
  #               {
  #                 + statusCode = 200
  #               }
  #           )
  #       }
  #     + resource_id          = (known after apply)
  #     + rest_api_id          = (known after apply)
  #     + timeout_milliseconds = 29000
  #     + type                 = "MOCK"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["get-user"].aws_api_gateway_integration_response._ will be created
  # + resource "aws_api_gateway_integration_response" "_" {
  #     + http_method         = "OPTIONS"
  #     + id                  = (known after apply)
  #     + resource_id         = (known after apply)
  #     + response_parameters = {
  #         + "method.response.header.Access-Control-Allow-Headers" = "'Authorization,Content-Type,X-Amz-Date,X-Amz-Security-Token,X-Api-Key'"
  #         + "method.response.header.Access-Control-Allow-Methods" = "'OPTIONS,HEAD,GET,POST,PUT,PATCH,DELETE'"
  #         + "method.response.header.Access-Control-Allow-Origin"  = "'*'"
  #         + "method.response.header.Access-Control-Max-Age"       = "'7200'"
  #       }
  #     + rest_api_id         = (known after apply)
  #     + status_code         = "200"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["get-user"].aws_api_gateway_method._ will be created
  # + resource "aws_api_gateway_method" "_" {
  #     + api_key_required = false
  #     + authorization    = "NONE"
  #     + http_method      = "OPTIONS"
  #     + id               = (known after apply)
  #     + resource_id      = (known after apply)
  #     + rest_api_id      = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["get-user"].aws_api_gateway_method_response._ will be created
  # + resource "aws_api_gateway_method_response" "_" {
  #     + http_method         = "OPTIONS"
  #     + id                  = (known after apply)
  #     + resource_id         = (known after apply)
  #     + response_models     = {
  #         + "application/json" = "Empty"
  #       }
  #     + response_parameters = {
  #         + "method.response.header.Access-Control-Allow-Headers" = true
  #         + "method.response.header.Access-Control-Allow-Methods" = true
  #         + "method.response.header.Access-Control-Allow-Origin"  = true
  #         + "method.response.header.Access-Control-Max-Age"       = true
  #       }
  #     + rest_api_id         = (known after apply)
  #     + status_code         = "200"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["id"].aws_api_gateway_integration._ will be created
  # + resource "aws_api_gateway_integration" "_" {
  #     + cache_namespace      = (known after apply)
  #     + connection_type      = "INTERNET"
  #     + content_handling     = "CONVERT_TO_TEXT"
  #     + http_method          = "OPTIONS"
  #     + id                   = (known after apply)
  #     + passthrough_behavior = (known after apply)
  #     + request_templates    = {
  #         + "application/json" = jsonencode(
  #               {
  #                 + statusCode = 200
  #               }
  #           )
  #       }
  #     + resource_id          = (known after apply)
  #     + rest_api_id          = (known after apply)
  #     + timeout_milliseconds = 29000
  #     + type                 = "MOCK"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["id"].aws_api_gateway_integration_response._ will be created
  # + resource "aws_api_gateway_integration_response" "_" {
  #     + http_method         = "OPTIONS"
  #     + id                  = (known after apply)
  #     + resource_id         = (known after apply)
  #     + response_parameters = {
  #         + "method.response.header.Access-Control-Allow-Headers" = "'Authorization,Content-Type,X-Amz-Date,X-Amz-Security-Token,X-Api-Key'"
  #         + "method.response.header.Access-Control-Allow-Methods" = "'OPTIONS,HEAD,GET,POST,PUT,PATCH,DELETE'"
  #         + "method.response.header.Access-Control-Allow-Origin"  = "'*'"
  #         + "method.response.header.Access-Control-Max-Age"       = "'7200'"
  #       }
  #     + rest_api_id         = (known after apply)
  #     + status_code         = "200"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["id"].aws_api_gateway_method._ will be created
  # + resource "aws_api_gateway_method" "_" {
  #     + api_key_required = false
  #     + authorization    = "NONE"
  #     + http_method      = "OPTIONS"
  #     + id               = (known after apply)
  #     + resource_id      = (known after apply)
  #     + rest_api_id      = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["id"].aws_api_gateway_method_response._ will be created
  # + resource "aws_api_gateway_method_response" "_" {
  #     + http_method         = "OPTIONS"
  #     + id                  = (known after apply)
  #     + resource_id         = (known after apply)
  #     + response_models     = {
  #         + "application/json" = "Empty"
  #       }
  #     + response_parameters = {
  #         + "method.response.header.Access-Control-Allow-Headers" = true
  #         + "method.response.header.Access-Control-Allow-Methods" = true
  #         + "method.response.header.Access-Control-Allow-Origin"  = true
  #         + "method.response.header.Access-Control-Max-Age"       = true
  #       }
  #     + rest_api_id         = (known after apply)
  #     + status_code         = "200"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["post-user"].aws_api_gateway_integration._ will be created
  # + resource "aws_api_gateway_integration" "_" {
  #     + cache_namespace      = (known after apply)
  #     + connection_type      = "INTERNET"
  #     + content_handling     = "CONVERT_TO_TEXT"
  #     + http_method          = "OPTIONS"
  #     + id                   = (known after apply)
  #     + passthrough_behavior = (known after apply)
  #     + request_templates    = {
  #         + "application/json" = jsonencode(
  #               {
  #                 + statusCode = 200
  #               }
  #           )
  #       }
  #     + resource_id          = (known after apply)
  #     + rest_api_id          = (known after apply)
  #     + timeout_milliseconds = 29000
  #     + type                 = "MOCK"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["post-user"].aws_api_gateway_integration_response._ will be created
  # + resource "aws_api_gateway_integration_response" "_" {
  #     + http_method         = "OPTIONS"
  #     + id                  = (known after apply)
  #     + resource_id         = (known after apply)
  #     + response_parameters = {
  #         + "method.response.header.Access-Control-Allow-Headers" = "'Authorization,Content-Type,X-Amz-Date,X-Amz-Security-Token,X-Api-Key'"
  #         + "method.response.header.Access-Control-Allow-Methods" = "'OPTIONS,HEAD,GET,POST,PUT,PATCH,DELETE'"
  #         + "method.response.header.Access-Control-Allow-Origin"  = "'*'"
  #         + "method.response.header.Access-Control-Max-Age"       = "'7200'"
  #       }
  #     + rest_api_id         = (known after apply)
  #     + status_code         = "200"
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["post-user"].aws_api_gateway_method._ will be created
  # + resource "aws_api_gateway_method" "_" {
  #     + api_key_required = false
  #     + authorization    = "NONE"
  #     + http_method      = "OPTIONS"
  #     + id               = (known after apply)
  #     + resource_id      = (known after apply)
  #     + rest_api_id      = (known after apply)
  #   }

  # # module.aws_api_gateway_rest_api.module.api-gateway-enable-cors["post-user"].aws_api_gateway_method_response._ will be created
  # + resource "aws_api_gateway_method_response" "_" {
  #     + http_method         = "OPTIONS"
  #     + id                  = (known after apply)
  #     + resource_id         = (known after apply)
  #     + response_models     = {
  #         + "application/json" = "Empty"
  #       }
  #     + response_parameters = {
  #         + "method.response.header.Access-Control-Allow-Headers" = true
  #         + "method.response.header.Access-Control-Allow-Methods" = true
  #         + "method.response.header.Access-Control-Allow-Origin"  = true
  #         + "method.response.header.Access-Control-Max-Age"       = true
  #       }
  #     + rest_api_id         = (known after apply)
  #     + status_code         = "200"
  #   }
