variable "source_aws_account_id" {
  type = string
  description = "The AWS account ID of the replication source"
}

variable "destination_bucket_name" {
  type = string
  description = "The replication destination bucket name"
}