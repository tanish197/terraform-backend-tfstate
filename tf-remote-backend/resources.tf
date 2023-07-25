resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "tf-s3-bucket"
   }


resource "aws_dynamodb_table" "my_dynamodb_table" {
   name = "tf-dynamodb-state-table"
   billing_mode = "PAY_PER_REQUEST"
   hash_key = "LockID"
   attribute {
      name = "LockID"
      type = "S"
   }
}
