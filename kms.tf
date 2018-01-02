#--------------------------------------------------------------
# Common Infrastructure Encryption Key
#--------------------------------------------------------------
resource "aws_kms_key" "infrastructure-key" {
  description             = "This key is used to encrypt common infrastructure resources."
  deletion_window_in_days = "${var.bootstrap_kms_deletion}"
  enable_key_rotation     = "${var.bootstrap_enable_kms_rotation}"
  policy                  = "${data.template_file.infrastructure-key-policy.rendered}"

  tags {
    Role = "Base-Infrastructure"
  }
}
