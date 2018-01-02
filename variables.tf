#--------------------------------------------------------------
# Global Variables
#--------------------------------------------------------------
variable "bootstrap_contact" {
  description = "The contact address responsible for managing base infrastructure resources."
  type        = "string"
}

variable "bootstrap_kms_admin_role" {
  description = "The name of an IAM role with full KMS admin privileges."
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
# CloudTrail Variables
#--------------------------------------------------------------
variable "bootstrap_cloudtrail_bucket_prefix" {
  default     = ""
  description = "An optional prefix where CloudTrail will store logs in the S3 bucket."
  type        = "string"
}

variable "bootstrap_cloudtrail_file_validation" {
  default     = true
  description = "Specifies whether log file integrity validation is enabled."
  type        = "string"
}

variable "bootstrap_cloudtrail_multiregion" {
  default     = true
  description = "Specifies whether the trail is created in the current region or in all regions."
  type        = "string"
}

variable "bootstrap_cloudtrail_name" {
  default     = "base-account-trail"
  description = "The name to apply to the CloudTrail trail."
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
