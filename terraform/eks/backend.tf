terraform {
 backend "s3" {
   bucket  = "syshero.com.br-tfstates"
   key = "tfstates/eks/terraform.tfstate"
   region  = "us-east-1"
   profile = "default"
 }
}