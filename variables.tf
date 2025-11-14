variable "ARM_SUBSCRIPTION_ID" {
  description = "The client secret for the Azure service principal."
  type        = string
  sensitive   = true # Mark as sensitive if it contains confidential information
}
variable "ARM_TENANT_ID" {
  description = "The client secret for the Azure service principal."
  type        = string
  sensitive   = true # Mark as sensitive if it contains confidential information
}
variable "ARM_CLIENT_ID" {
  description = "The client secret for the Azure service principal."
  type        = string
  sensitive   = true # Mark as sensitive if it contains confidential information
}
variable "ARM_CLIENT_SECRET" {
  description = "The client secret for the Azure service principal."
  type        = string
  sensitive   = true # Mark as sensitive if it contains confidential information
}
