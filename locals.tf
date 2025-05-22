locals {
  secrets_json = jsondecode(file("/vaultsecrets.json"))
}
