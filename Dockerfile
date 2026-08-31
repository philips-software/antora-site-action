# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.2.0@sha256:0b30652852e88ee58619d185d01855a1efd68bdb2d7cb1d6d2fd4fdd80b01a2e
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora extensions for documentation search and diagram rendering
RUN npm i -g asciidoctor-kroki@latest-0 @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
