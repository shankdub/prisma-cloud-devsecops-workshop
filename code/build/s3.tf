provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "e76ae518e85a9a204cfa0926c2c7927853e8f317"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 16:14:58"
    git_last_modified_by = "49691426+shankdub@users.noreply.github.com"
    git_modifiers        = "49691426+shankdub"
    git_org              = "shankdub"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "4f5b2c67-aa35-4092-990a-053fb413c1d4"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

