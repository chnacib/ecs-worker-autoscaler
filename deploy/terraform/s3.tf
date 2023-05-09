resource "aws_s3_bucket" "autoscaler_config" {
  bucket = var.bucket_name
  acl    = "private"

}

resource "aws_s3_bucket_object" "config_object" {
  bucket = var.bucket_name
  key    = "autoscaler_config.json"
  source = "../../../autoscaler_config/autoscaler_config.json"

  content_type = "text/plain"

  depends_on = [aws_s3_bucket.autoscaler_config]

}