resource "aws_s3_bucket" "first_bucket" {

  bucket = "ganogsi-remote-state"

    versioning {
      enabled = true
  }
}