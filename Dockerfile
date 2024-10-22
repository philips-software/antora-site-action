# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.1.9@sha256:8f0a966f89de687f6bd7278d4a198e944ed90b3e1f1bb9ee703f9f27784f060c
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora generators for documentation search and plantuml rendering
RUN npm i -g asciidoctor-plantuml asciidoctor-kroki @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
