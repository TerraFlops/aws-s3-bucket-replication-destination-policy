variable "source_aws_account_ids" {
  type = set(string)
  description = "The AWS account IDs that will be allowed to replicate into this bucket"
}

variable "destination_bucket_name" {
  type = string
  description = "The replication destination bucket name"
}