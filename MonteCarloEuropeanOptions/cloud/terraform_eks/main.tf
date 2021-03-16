#
# Copyright (C) 2021 Intel Corporation
# SPDX-License-Identifier: Apache-2.0
#
module "vpc" {
  source = "github.com/reactiveops/terraform-vpc.git?ref=v5.0.1"
  aws_region = "us-east-2"
  az_count   = 3
  aws_azs    = "us-east-2a, us-east-2b, us-east-2c"
  global_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
  }
}
