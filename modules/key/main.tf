
resource "terracurl_request" "key_create" {
  name = var.user_id

  # Create
  url    = "${var.url}/key/generate"
  method = "POST"
  request_body = jsonencode({
    models                = var.models
    spend                 = var.spend
    max_budget            = var.max_budget
    user_id               = var.user_id != null ? var.user_id : null
    team_id               = var.team_id != null ? var.team_id : null
    max_parallel_requests = var.max_parallel_requests
    metadata              = var.metadata
    tpm_limit             = var.tpm_limit
    rpm_limit             = var.rpm_limit
    key_alias             = var.key_alias
    budget_duration       = var.budget_duration
    duration              = var.duration
    model_max_budget      = var.model_max_budget
  })
  headers = {
    Authorization = "Bearer ${var.token}"
  }
  response_codes = [
    200,
    204
  ]
  skip_tls_verify = true

  lifecycle {
    ignore_changes = all
  }

}
###

resource "restapi_object" "key_update" {
  id_attribute = "key"
  # CREATE
  create_method = "POST"
  create_path   = "/key/update"
  path          = "/key/update"
  data = jsonencode({
    models                = var.models
    spend                 = var.spend
    max_budget            = var.max_budget
    user_id               = var.user_id != null ? var.user_id : null
    team_id               = var.team_id != null ? var.team_id : null
    max_parallel_requests = var.max_parallel_requests
    metadata              = var.metadata
    tpm_limit             = var.tpm_limit
    rpm_limit             = var.rpm_limit
    key_alias             = var.key_alias
    duration              = var.duration
    budget_duration       = var.budget_duration
    model_max_budget      = var.model_max_budget
    key                   = jsondecode(terracurl_request.key_create.response).key
  })

  # READ
  read_method = "GET"
  read_path   = "/key/info?key=${jsondecode(terracurl_request.key_create.response).key}"
  # read_data = ""
  # read_search = ""

  # UPDATE
  update_method = "POST"
  update_path   = "/key/update"
  update_data = jsonencode({
    models                = var.models
    spend                 = var.spend
    max_budget            = var.max_budget
    user_id               = var.user_id != null ? var.user_id : null
    team_id               = var.team_id != null ? var.team_id : null
    max_parallel_requests = var.max_parallel_requests
    metadata              = var.metadata
    tpm_limit             = var.tpm_limit
    rpm_limit             = var.rpm_limit
    key_alias             = var.key_alias
    duration              = var.duration
    budget_duration       = var.budget_duration
    model_max_budget      = var.model_max_budget
    key                   = jsondecode(terracurl_request.key_create.response).key
  })

  # DESTROY
  destroy_method = "POST"
  destroy_path   = "/key/delete"
  destroy_data = jsonencode({
    keys = [jsondecode(terracurl_request.key_create.response).key]
  })
}

data "terracurl_request" "key_data" {
  name   = var.user_id
  url    = "${var.url}/key/info?key=${jsondecode(terracurl_request.key_create.response).key}"
  method = "GET"

  headers = {
    Authorization = "Bearer ${var.token}"
  }
  response_codes = [
    200,
    204
  ]

  max_retry      = 1
  retry_interval = 10

  depends_on = [restapi_object.key_update]
}