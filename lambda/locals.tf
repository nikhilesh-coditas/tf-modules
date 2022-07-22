locals {
 global_name = "${var.environment}-${var.product}-${var.resource_name}"
 tags = {
    Environment             = var.environment
    Product                 = var.product
    resource_name           = var.resource_name
    Can_be_deleted          = true
    Created_using_terraform = true
 }
}
