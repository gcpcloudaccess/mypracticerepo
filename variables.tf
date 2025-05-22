variable "secrets_json" {
  default = jsonencode(jsondecode(file("${path.module}/vaultsecrets.json")))
}


variable "my-app-secret" {
  description = "My application secret"
  type        = string
  default     = " my-app-secret"
}