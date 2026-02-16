data "aws_eks_cluster" "this" {
  name = aws_eks_cluster.eks.name
}

resource "aws_iam_openid_connect_provider" "oidc" {
  url = data.aws_eks_cluster.this.identity[0].oidc[0].issuer

  client_id_list = [
    "sts.amazonaws.com"
  ]

  thumbprint_list = [
    "9e99a48a9960b14926bb7f3b02e22da0ecd3f3e4"
  ]
}
