#--------------------------------------------------------------
# Infrastructure IAM Password Policy
#--------------------------------------------------------------
resource "aws_iam_account_password_policy" "base-policy" {
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  allow_users_to_change_password = true
  max_password_age               = 90
  password_reuse_prevention      = 5
}
