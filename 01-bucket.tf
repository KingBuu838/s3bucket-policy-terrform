resource "aws_s3_bucket" "website" {
  bucket_prefix = "valkyrie-staurday"
  force_destroy = true


  tags = {
    Name        = "Joe"
    Environment = "remote"
  }
}