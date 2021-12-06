# --- root/backend.tf ---

terraform {
  backend "s3" {       
    bucket = "igw-s3-general-bucket"
    key = "Prod/week-24-project-120621.tfstate"
    dynamodb_table = "s3-state-lock"
    region = "ca-central-1"
  }
}
