# Create S3 bucket for Terraform state storage
resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-state-bucket"  
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "Dev"
  }
}
