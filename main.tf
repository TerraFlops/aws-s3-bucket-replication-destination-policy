# Create IAM policy document for destination bucket
data "aws_iam_policy_document" "destination" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    principals {
      identifiers = [
        "arn:aws:iam::${var.source_aws_account_id}:root"
      ]
      type = "AWS"
    }
    actions = [
      "s3:ReplicateDelete",
      "s3:ReplicateObject",
      "s3:ObjectOwnerOverrideToBucketOwner"
    ]
    resources = [
      "arn:aws:s3:::${var.destination_bucket_name}/*"
    ]
  }
  statement {
    effect = "Allow"
    principals {
      identifiers = [
        "arn:aws:iam::${var.source_aws_account_id}:root"
      ]
      type = "AWS"
    }
    actions = [
      "s3:List*",
      "s3:GetBucketVersioning",
      "s3:PutBucketVersioning"
    ]
    resources = [
      "arn:aws:s3:::${var.destination_bucket_name}"
    ]
  }
}