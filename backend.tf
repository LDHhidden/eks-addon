terraform {
  backend "s3" {
    bucket       = "eks-state-bucket"
    key          = "env/dev/eks/terraform.tfstate"
    region       = "ap-northeast-2"
    use_lockfile = true
  }
}