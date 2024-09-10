variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Whether to enable versioning"
  type        = bool
  default     = true
}

variable "block_public_acls" {
  description = "Whether to block public ACLs"
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Whether to ignore public ACLs"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Whether to block public policies"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Whether to restrict public bucket policies"
  type        = bool
  default     = true
}

variable "lifecycle_status" {
  description = "The status of the lifecycle rule"
  type        = string
  default     = "Enabled"
}

variable "lifecycle_expiration_days" {
  description = "Number of days after which to delete the objects"
  type        = number
  default     = 365
}

variable "noncurrent_version_expiration_days" {
  description = "Number of days after which to delete non-current object versions"
  type        = number
  default     = 90
}
