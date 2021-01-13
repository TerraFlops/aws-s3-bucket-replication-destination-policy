output "destination_bucket_policy" {
  description = "S3 bucket policy that should be applied to destniation bucket to allow replication"
  value = data.aws_iam_policy_document.destination.json
}