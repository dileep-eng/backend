terraform {
  backend "s3" {
    bucket         = "backendbackupstatefile"   # 🔁 Replace with your actual bucket
    key            = "ec2-instance/terraform.tfstate"
    region         = "ap-south-1"
                encrypt        = true
  }
}