variable "application" {
  type    = string
  default = null
}
variable "assume_role_policy" {
  type = string
}
variable "bucket_name" {
  type = string
}

variable "environment" {
  type = string
}
variable "handler" {
  type = string
}
variable "memory_size" {
  type = string
}






variable "policy" {
  type = string
}
variable "product" {
  type = string
}
variable "runtime" {
  type = string
}

variable "timeout" {
  type = string
}
variable "resource_name" {
  type = string
}
variable "publish" {
  type    = bool
  default = true
}
variable "environment_variables" {
  type    = map(any)
  default = {}
}
variable "attach_extra_policy" {
  type = bool
}
variable "architectures" {
  type    = list(any)
  default = ["x86_64"]
}
variable "s3_key" {
  type = string
}
variable "lambda_subnet_ids" {
  type = list(string)
}
variable "lambda_security_group_ids" {
  type = list(string)
}

variable "layers" {
  type = list(string)
}
