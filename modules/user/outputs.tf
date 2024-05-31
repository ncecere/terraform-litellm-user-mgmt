output "response" {
  value = jsondecode(terracurl_request.user.response)
}

output "data" {
  value = jsondecode(data.terracurl_request.user.response)
}