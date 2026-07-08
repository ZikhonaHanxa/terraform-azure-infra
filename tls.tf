resource "tls_private_key" "SSH_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}
output "tls_private_key" {
value = tls_private_key.SSH_key.private_key_pem 
sensitive = true
}