resource "awscc_s3_bucket" "this" {
  bucket_name = var.bucket_name

  tags = [{
    key   = "used_for"
    value = "testing"
  }]

}

variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}