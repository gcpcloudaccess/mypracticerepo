# variable "secrets_json" {
#   description = "Secrets loaded from vaultsecrets.json"
#   type        = any
# #   default = jsondecode(file("vaultsecrets.json"))
# }

variable "my-app-secret" {
  description = "My application secret"
  type        = string
  default     = "my-app-secret"
}