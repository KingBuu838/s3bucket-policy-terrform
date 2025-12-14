output "website_url" {
  value = "http://aws_s3_bucket_website_configuration.website-2.website_endpoint"
}

output "bucket_info" {
  value = {
    name = aws_s3_bucket.website.bucket
    arn  = aws_s3_bucket.website.arn
  }
}

output "policy-info" {
  value = "\n${aws_s3_bucket_policy.allow_policy.policy}\n"
}