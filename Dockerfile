# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.1.10@sha256:6b942c78dc6cb3e1d9f2cbc39141af911e15110a6dd825c3ad402754d7977bfa
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora generators for documentation search and plantuml rendering
RUN npm i -g asciidoctor-plantuml asciidoctor-kroki @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
