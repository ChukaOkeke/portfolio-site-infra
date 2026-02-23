# Define the variables
variable "cloudflare_api_token" {
  description = "The API Token for Cloudflare authentication"
  type        = string
  sensitive   = true # This prevents the token from being printed in logs
}

variable "cloudflare_account_id" {
  description = "The ID of the Cloudflare account"
  type        = string
}