# Create an S3 bucket resource
resource "aws_s3_bucket" "talaat9080908098080" {
  bucket = "my-tf-test-bucket098098098080"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
