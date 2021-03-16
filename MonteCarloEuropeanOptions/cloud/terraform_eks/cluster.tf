#
# Copyright (C) 2021 Intel Corporation
# SPDX-License-Identifier: Apache-2.0
#
module "eks" {
  source       = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git?ref=v12.1.0"
  cluster_name = local.cluster_name
  vpc_id       = module.vpc.aws_vpc_id
  subnets      = module.vpc.aws_subnet_private_prod_ids
  node_groups = {
    eks_nodes = {
      desired_capacity = 1
      min_capacity     = 2
      max_capacity     = 2 
      instance_type = "c5.2xlarge"
    }
  }
  manage_aws_auth = false
}
