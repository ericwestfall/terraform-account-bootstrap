#--------------------------------------------------------------
# Infrastructure Bucket Policy Template
#--------------------------------------------------------------
data "template_file" "infrastructure-bucket-policy" {
  template = "${file("${path.module}/templates/bucket-policy.tpl")}"

  vars {
    account_number      = "${data.aws_caller_identity.current.account_id}"
    bucket_name         = "${var.bootstrap_bucket_name}-${data.aws_caller_identity.current.account_id}"
    elb_service_account = "${data.aws_elb_service_account.main.arn}"
  }
}

#--------------------------------------------------------------
# Common Infrastructure Encryption Key Policy Template
#--------------------------------------------------------------
data "template_file" "infrastructure-key-policy" {
  template = "${file("${path.module}/templates/key-policy.tpl")}"

  vars {
    account_number      = "${data.aws_caller_identity.current.account_id}"
    admin_role          = "${var.bootstrap_kms_admin_role}"
  }
}
