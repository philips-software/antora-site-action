# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.2.1@sha256:1592f1833a703aeb4e911df2f447df24eb36b37a958719e79e2537de51e9784b
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora extensions for documentation search and diagram rendering
RUN npm i -g asciidoctor-kroki@latest-0 @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
