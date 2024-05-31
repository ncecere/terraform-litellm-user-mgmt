# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "url" {
  type        = string
  description = "litellm url"
}

variable "token" {
  type        = string
  description = "Token issued from litellm with permission to create/add users"
}

variable "user_id" {
  type        = string
  description = "ID for user"
}

variable "user_email" {
  type        = string
  description = "email address for user"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "user_alias" {
  type    = string
  description = "Alias for the user, noramly would be gatorlink"
  default = null
}

variable "user_role" {
  type        = string
  description = "Specify a user role - 'admin', 'app_owner', 'app_user'"
  default     = "app_user"
}

variable "key_alias" {
  type    = string
  description = "Alias for the user provided key"
  default = null
}

variable "max_budget" {
  type        = number
  description = "Maximum monthly budget assigned to the user and there personal keys"
  default     = 0
}

variable "user_max_budget" {
  type        = number
  description = "Maximum monthly budget assigned to the user and there personal keys"
  default     = 0
}

variable "models" {
  type        = list(string)
  description = "Models assigned directly to the user and there personal keys"
  default     = ["fake_model"]
}

variable "user_models" {
  type        = list(string)
  description = "Models assigned directly to the user and there personal keys"
  default     = ["fake_model"]
}

variable "tpm_limit" {
  type        = number
  description = "Tokens per minute for the user and there personal keys"
  default     = 100000
}

variable "rpm_limit" {
  type        = number
  description = "Requests per minute for the user and there personal keys"
  default     = 1000
}


variable "team_id" {
  type    = string
  description = "Team ID to assign to USER/KEY"
  default = null
}

variable "metadata" {
  type    = map(string)
  description = "Metadata to assign to USER/KEY"
  default = {}
}

variable "budget_duration" {
  type    = string
  description = "Budget duration befor reseting."
  default = "30d"
}

variable "model_max_budget" {
  type    = map(string)
  default = {}
}


variable "duration" {
  type    = string
  description = "Howlong the key should last before expiring"
  default = "365d"
}

variable "max_parallel_requests" {
  type    = number
  description = "Maximum parallel requests that a user/key can perform"
  default = 100
}

variable "spend" {
  type    = number
  description = "Set how much has been spent by the USER/KEY"
  default = 0
}

variable "auto_create_key" {
  type    = bool
  description = "Should a key be created for the user durring user creation"
  default = false
}

###
