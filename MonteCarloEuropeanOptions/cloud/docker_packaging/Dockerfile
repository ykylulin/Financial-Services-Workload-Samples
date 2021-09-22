#
# Copyright (C) 2021 Intel Corporation
# SPDX-License-Identifier: Apache-2.0
#
FROM centos:8
RUN yum -y upgrade
WORKDIR /app
COPY start run MonteCarloInsideBlockingDP.avx* *.so* ./
CMD ["/bin/bash", "/app/start"]
