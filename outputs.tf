output "user_connected_accounts_lookup_id" {
  description = "Map of id values across all user_connected_accounts_lookup, keyed the same as var.user_connected_accounts_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_user_connected_accounts.user_connected_accounts_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_connected_accounts_lookup_connected_accounts" {
  description = "Map of connected_accounts values across all user_connected_accounts_lookup, keyed the same as var.user_connected_accounts_lookup except keys with no connected_accounts are omitted"
  value       = { for k, v in data.auth0_user_connected_accounts.user_connected_accounts_lookup : k => v.connected_accounts if v.connected_accounts != null && length(v.connected_accounts) > 0 }
}
output "user_connected_accounts_lookup_user_id" {
  description = "Map of user_id values across all user_connected_accounts_lookup, keyed the same as var.user_connected_accounts_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.auth0_user_connected_accounts.user_connected_accounts_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

