#--------------------------------------------------------------
# Global Variables
#--------------------------------------------------------------
variable "bootstrap_contact" {
  description = "The contact address responsible for managing base infrastructure resources."
  type        = "string"
}

#--------------------------------------------------------------
# Bucket Variables
#--------------------------------------------------------------
variable "bootstrap_bucket_name" {
  default     = "base-infrastructure-bucket"
  description = "The name of the base infrastructure S3 bucket. The account number will be automatically appended."
  type        = "string"
}

#--------------------------------------------------------------
# Encryption Variables
#--------------------------------------------------------------
variable "bootstrap_enable_kms_rotation" {
  default     = true
  description = "Specifies whether key rotation is enabled."
  type        = "string"
}

variable "bootstrap_kms_deletion" {
  default     = 15
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days."
  type        = "string"
}
