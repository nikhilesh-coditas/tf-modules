locals {
  global_name = var.application != null ? "${var.environment}_${var.product}_${var.application}_${var.resource_name}" : "${var.environment}_${var.product}_${var.resource_name}"
  tags = var.application != null ? {
    Environment             = var.environment
    Product                 = var.product
    Application             = var.application
    resource_name                = var.resource_name
    Can_be_deleted          = true
    Created_using_terraform = true
    } : {
    Environment             = var.environment
    Product                 = var.product
    resource_name                = var.resource_name
    Can_be_deleted          = true
    Created_using_terraform = true
  }
}
