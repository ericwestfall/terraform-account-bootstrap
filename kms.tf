#--------------------------------------------------------------
# Common Infrastructure Encryption Key
#--------------------------------------------------------------
resource "aws_kms_key" "infrastucture-key" {
  description             = "This key is used to encrypt common infrastructure resources."
  deletion_window_in_days = "${var.bootstrap_kms_deletion}"
  enable_key_rotation     = "${var.bootstrap_enable_kms_rotation}"

  tags {
    Role = "Base-Infrastructure"
  }
}
