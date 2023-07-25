terraform {
    required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "~>4.66.1"
         }
     }
required_version = ">=1.4.0"



backend "s3" {
   bucket = "tf-s3-bucket"
   key =  "terraform-tfstate"
   region = "ap-south-1"
   dynamodb_table = "tf-dynamodb-state-table"
}

}
