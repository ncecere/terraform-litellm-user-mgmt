
variable "url" {
  type = string
}

variable "token" {
  type = string
}

variable "user_id" {
  type = string
}

variable "user_email" {
  type = string
}

variable "user_alias" {
  type = string
}

variable "user_role" {
  type = string
}

variable "key_alias" {
  type = string
}

variable "max_budget" {
  type = number
}

variable "models" {
  type = list(string)
}

variable "tpm_limit" {
  type = number
}

variable "rpm_limit" {
  type = number
}

variable "auto_create_key" {
  type = bool
}