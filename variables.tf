variable "secrets_json" {
  default = jsonencode(jsondecode(file("${path.module}/vaultsecrets.json")))
}