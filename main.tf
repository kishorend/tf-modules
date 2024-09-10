provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "./modules/s3-bucket"  # Path to your s3-bucket module

  bucket_name                     = "5064-mgmt-bucket-dev"
  enable_versioning                = true
  block_public_acls                = true
  ignore_public_acls               = true
  block_public_policy              = true
  restrict_public_buckets          = true
  lifecycle_status                 = "Enabled"
  lifecycle_expiration_days        = 365
  noncurrent_version_expiration_days = 90
}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}

output "s3_bucket_arn" {
  value = module.s3_bucket.bucket_arn
}

