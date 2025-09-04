# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.1.12@sha256:fde418af012296623fb5f6002207c3e701e3b6ff23667b87c1e0219beb059fc5
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora generators for documentation search and plantuml rendering
RUN npm i -g asciidoctor-plantuml asciidoctor-kroki @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
