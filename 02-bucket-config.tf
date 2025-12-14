resource "aws_s3_bucket_website_configuration" "website-2" {
  bucket = aws_s3_bucket.website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}


resource "aws_s3_bucket_public_access_block" "website-3" {
  bucket = aws_s3_bucket.website.id

  block_public_acls  = true
  ignore_public_acls = true

  block_public_policy     = false
  restrict_public_buckets = false
}



resource "aws_s3_bucket_policy" "allow_policy" {
  bucket = aws_s3_bucket.website.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicAccess"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.website.arn}/*"
      }
    ]
  })
}
