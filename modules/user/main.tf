
resource "terracurl_request" "user" {
  name = var.user_id

  # Create
  url    = "${var.url}/user/new"
  method = "POST"
  request_body = jsonencode({
    user_id         = var.user_id
    user_email      = var.user_email
    user_alias      = var.user_alias
    key_alias       = var.key_alias
    user_role       = var.user_role
    max_budget      = var.max_budget
    models          = var.models
    tpm_limit       = var.tpm_limit
    rpm_limit       = var.rpm_limit
    auto_create_key = var.auto_create_key
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

data "terracurl_request" "user" {
  name   = var.user_id
  url    = "${var.url}/user/info?user_id=${var.user_id}"
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

  depends_on = [terracurl_request.user]
}