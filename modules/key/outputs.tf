
output "key" {
  value = jsondecode(terracurl_request.key_create.response).key
}

output "response" {
  value = jsondecode(restapi_object.key_update.api_response)
}

output "data" {
  value = jsondecode(data.terracurl_request.key_data.response)
}