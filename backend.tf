terraform {
  backend "s3" {
    bucket       = "eks-addons-state-bucket"
    key          = "env/dev/eks-addons/terraform.tfstate"
    region       = "ap-northeast-2"
    use_lockfile = true
  }
}