#To store state files in S3 bucket
resource "aws_s3_bucket" "tf_store" {
  bucket   = "vpc-resource-bucket-tf-state"
}

resource "aws_s3_bucket_versioning" "versioning_tfstate" {
  bucket   = aws_s3_bucket.tf_store.id
  versioning_configuration {
    status = "Enabled"
  }
}