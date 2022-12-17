terraform {
  backend "s3" {
    bucket = "euran-terraform-statefile-abdullah"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
