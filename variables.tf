variable "user_connected_accounts_lookup" {
  description = <<EOT
Map of user_connected_accounts_lookup, attributes below
Required:
    - user_id
EOT

  type = map(object({
    user_id = string
  }))
}

