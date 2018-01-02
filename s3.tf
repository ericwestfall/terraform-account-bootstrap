#--------------------------------------------------------------
# Common Infrastructure Bucket
#--------------------------------------------------------------
resource "aws_s3_bucket" "infrastructure-bucket" {
  acl    = "private"
  bucket = "${var.bootstrap_bucket_name}-${data.aws_caller_identity.current.account_id}"
  policy = "${data.template_file.infrastructure-bucket-policy.rendered}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${aws_kms_key.infrastructure-key.arn}"
        sse_algorithm     = "aws:kms"
      }
    }
  }

  tags {
    Name    = "${var.bootstrap_bucket_name}"
    contact = "${var.bootstrap_contact}"
    role    = "Base-Infrastructure"
  }

  versioning {
    enabled = true
  }
}
