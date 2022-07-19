resource "aws_lambda_function" "this" {
  s3_bucket         = var.bucket_name
  architectures     = var.architectures
  # s3_key            = aws_s3_bucket_object.this.key
  # s3_object_version = aws_s3_bucket_object.this.version_id
  function_name     = var.function_name
  handler           = var.handler
  role              = aws_iam_role.this.arn
  description       = var.function_name
  memory_size       = var.memory_size
  runtime           = var.runtime
  timeout           = var.timeout
  publish           = var.publish
  dynamic "environment" {
    for_each = length(keys(var.environment_variables)) == 0 ? {} : tomap({ "environment_variables" = var.environment_variables })
    content {
      variables = environment.value
    }
  }
  dynamic "associate_vpc" {
    for_each = var.lambda_subnet_ids != null && var.lambda_security_group_ids != null ? [true] : []
    content {
      security_group_ids = var.lambda_security_group_ids
      subnet_ids         = var.lambda_subnet_ids
    }
  }
  tags             = local.tags
}
resource "aws_iam_role_policy" "this" {
  count  = var.attach_extra_policy ? 1 : 0
  name   = var.function_name
  role   = aws_iam_role.this.id
  policy = var.policy
}

resource "aws_iam_role" "this" {
  name               = var.function_name
  assume_role_policy = var.assume_role_policy
  path               = "/"
  description        = var.function_name
  tags               = local.tags
}

resource "aws_iam_role_policy_attachment" "AWSLambdaBasicExecutionRole_Policy" {
  role       = aws_iam_role.this.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_layer_version" "this" {
  filename   = "lambda_layer_payload.zip"
  layer_name = "Connect360-lambda-layer"
 
}
