resource "aws_eks_cluster" "tfer--deveks-phuong" {
  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = "true"
  }

  bootstrap_self_managed_addons = "false"

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "172.20.0.0/16"
  }

  name     = "deveks-phuong"
  role_arn = "arn:aws:iam::529088254389:role/eks-role"

  upgrade_policy {
    support_type = "EXTENDED"
  }

  version = "1.30"

  vpc_config {
    endpoint_private_access = "false"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["0.0.0.0/0"]
    security_group_ids      = ["sg-069cb74649e57b1b6"]
    subnet_ids              = ["subnet-010d2864a01493c49", "subnet-02aa14a57a32921b4", "subnet-08a85435642137e26", "subnet-0f34468046871b721"]
  }
}
