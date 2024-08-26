resource "aws_vpc" "tfer--vpc-0c45234922555bafc" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "project-vpc"
  }

  tags_all = {
    Name = "project-vpc"
  }
}

resource "aws_vpc" "tfer--vpc-0e6eefabadd51cc9e" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
}
