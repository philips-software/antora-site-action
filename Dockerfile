# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.1.14@sha256:8d2c31b2857584b548b57e5c11895b8a5744976b5915eee4740f3810454d4c46
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora generators for documentation search and plantuml rendering
RUN npm i -g asciidoctor-plantuml asciidoctor-kroki @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
