data "auth0_user_connected_accounts" "user_connected_accounts_lookup" {
  for_each = var.user_connected_accounts_lookup

  user_id = each.value.user_id
}

