variable "url" {
  type        = string
  description = "URL for UF AI Gateway"
}

variable "token" {
  type        = string
  description = "Token issued from AI Gateway with permission to create/add users"
}

variable "models" {
  type    = list(string)
  default = ["fake_model"]
}

variable "spend" {
  type    = number
  default = 0
}

variable "max_budget" {
  type    = number
  default = 10
}

variable "user_id" {
  type    = string
  default = null
}

variable "team_id" {
  type    = string
  default = null
}


variable "max_parallel_requests" {
  type    = number
  default = 100
}

variable "metadata" {
  type    = map(string)
  default = {}
}

variable "tpm_limit" {
  type    = number
  default = 20000
}

variable "rpm_limit" {
  type    = number
  default = 100
}

variable "budget_duration" {
  type    = string
  default = "30d"
}

variable "soft_budget" {
  type    = number
  default = 10
}

variable "key_alias" {
  type = string
}

variable "duration" {
  type    = string
  default = "30d"
}

variable "model_max_budget" {
  type    = map(string)
  default = {}
}