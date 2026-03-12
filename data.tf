data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = var.eks_state_bucket
    key    = var.eks_state_key
    region = var.region
  }
}
data "aws_eks_cluster" "name" {
  name = data.terraform_remote_state.eks.outputs.eks_cluster_name
}

data "aws_eks_cluster_auth" "eks_auth" {
  name = data.terraform_remote_state.eks.outputs.eks_cluster_name
}