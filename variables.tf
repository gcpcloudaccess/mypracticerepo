variable "secrets_json" {
  default = jsondecode(file("C:/Users/Myra Sharma/OneDrive/Desktop/Terraoform Projects/mypracticerepo/vaultsecrets.json"))
}

variable "my-app-secret" {
  description = "My application secret"
  type        = string
  default     = " my-app-secret"
}