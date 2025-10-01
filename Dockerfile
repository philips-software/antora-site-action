# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.1.13@sha256:2c954c6541af287dc7b78c22d375fd6812c786ba6debc19b4ce8a96f5f32d62c
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora generators for documentation search and plantuml rendering
RUN npm i -g asciidoctor-plantuml asciidoctor-kroki @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
