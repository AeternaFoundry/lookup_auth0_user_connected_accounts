output "user_connected_accounts_lookup_id" {
  description = "Map of id values across all user_connected_accounts_lookup, keyed the same as var.user_connected_accounts_lookup"
  value       = { for k, v in data.auth0_user_connected_accounts.user_connected_accounts_lookup : k => v.id }
}
output "user_connected_accounts_lookup_connected_accounts" {
  description = "Map of connected_accounts values across all user_connected_accounts_lookup, keyed the same as var.user_connected_accounts_lookup"
  value       = { for k, v in data.auth0_user_connected_accounts.user_connected_accounts_lookup : k => v.connected_accounts }
}
output "user_connected_accounts_lookup_user_id" {
  description = "Map of user_id values across all user_connected_accounts_lookup, keyed the same as var.user_connected_accounts_lookup"
  value       = { for k, v in data.auth0_user_connected_accounts.user_connected_accounts_lookup : k => v.user_id }
}

