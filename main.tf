module "user_mgmt" {
  source          = "./modules/user"
  url             = var.url
  token           = var.token
  user_id         = var.user_id
  user_email      = var.user_email
  user_alias      = var.user_alias != null ? var.user_alias : var.user_id
  key_alias       = var.key_alias != null ? var.key_alias : var.user_id
  user_role       = var.user_role
  max_budget      = var.max_budget
  models          = var.user_models
  tpm_limit       = var.tpm_limit
  rpm_limit       = var.rpm_limit
  auto_create_key = var.auto_create_key

}


module "key_mgmt" {
  source = "./modules/key"

  url                   = var.url
  token                 = var.token
  models                = var.models
  spend                 = var.spend
  max_budget            = var.max_budget
  user_id               = var.user_id != null ? var.user_id : null
  team_id               = var.team_id != null ? var.team_id : null
  max_parallel_requests = var.max_parallel_requests
  metadata              = var.metadata
  tpm_limit             = var.tpm_limit
  rpm_limit             = var.rpm_limit
  key_alias             = var.user_id
  duration              = var.duration
  budget_duration       = var.budget_duration
  model_max_budget      = var.model_max_budget
}