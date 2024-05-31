module "usr_mgmt" {
  source     = "../.."
  url        = "<LITELLM_URL>"
  token      = "<LITELLM_TOKEN>"
  user_id    = "<USER_ID>"
  user_email = "<EMAIL>"
  max_budget = 15
  models     = [
    "list", 
    "of", 
    "models"
  ]

}

# Available User Outputs
output "user" {
  value = module.usr_mgmt.user_response
}

output "user_data" {
  value = module.usr_mgmt.user_data
}

# Available Key Outputs
output "key" {
  value = module.usr_mgmt.key
}

output "key_data" {
  value = module.usr_mgmt.key_data
}

output "key_res" {
  value = module.usr_mgmt.key_response
}