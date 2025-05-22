provider "aws" {
  region = "us-east-1"
}

resource "aws_secretsmanager_secret" "vault-secrets" {
  name        = var.my-app-secret
  description = "My application secret"
}

resource "aws_secretsmanager_secret_version" "my_secret_version" {
  secret_id     = aws_secretsmanager_secret.vault-secrets.id
  secret_string = jsonencode(local.secrets_json)
}