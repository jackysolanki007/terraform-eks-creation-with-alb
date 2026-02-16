resource "aws_eks_cluster" "eks" {
  name = var.cluster_name
  role_arn = aws_iam_role.cluster.arn

  enabled_cluster_log_types = [
    "api","audit",
  ]

  compute_config {
    enabled = false
  }
  vpc_config {
    subnet_ids = var.subnet_ids
    endpoint_private_access = true
    endpoint_public_access = true
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster_policy
  ]

}