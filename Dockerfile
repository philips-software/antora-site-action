# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM docker.io/library/node:24-alpine@sha256:2bdb65ed1dab192432bc31c95f94155ca5ad7fc1392fb7eb7526ab682fa5bf14
# Docker image for Antora documentation site generator (https://antora.org/)

COPY ./entrypoint.sh /entrypoint.sh

# Add permissions to execute entrypoint
RUN chmod +x /entrypoint.sh
# install antora and extra extensions for documentation search and diagram rendering
RUN npm i -g @antora/cli@3.1.15 @antora/site-generator@3.1.15 asciidoctor-kroki @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
