output "secret-name" {
  value = aws_secretsmanager_secret.vault-secrets.name
}