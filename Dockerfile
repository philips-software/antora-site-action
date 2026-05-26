# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/antora/antora:3.1.15@sha256:3e8894c1c1193e0ad27cd87687143b89de88edcb104c653cdce085354a18be5f
# Docker image for Antora documentation site generator (https://antora.org/)
# https://gitlab.com/antora/docker-antora

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install extra antora extensions for documentation search and diagram rendering
RUN npm i -g asciidoctor-kroki @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
