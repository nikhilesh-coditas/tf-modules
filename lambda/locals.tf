locals {
 # global_name = "${var.name-prefix}-${var.lambda-name}"
 tags = {
  Can_be_deleted          = true
  Created_using_terraform = true
 }
}
