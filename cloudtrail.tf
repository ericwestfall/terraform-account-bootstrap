#--------------------------------------------------------------
# Base CloudTrail Configuration
#--------------------------------------------------------------
resource "aws_cloudtrail" "cloudtrail_logging" {
  name                          = "${var.bootstrap_cloudtrail_name}"
  s3_bucket_name                = "${aws_s3_bucket.infrastructure-bucket.id}"
  s3_key_prefix                 = "${var.bootstrap_cloudtrail_bucket_prefix}"
  enable_log_file_validation    = "${var.bootstrap_cloudtrail_file_validation}"
  include_global_service_events = true
  is_multi_region_trail         = "${var.bootstrap_cloudtrail_multiregion}"
  kms_key_id                    = "${aws_kms_key.infrastructure-key.arn}"

  tags {
    Role = "Base-Infrastructure"
  }
}
