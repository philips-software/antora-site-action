# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM node:24-alpine

ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules

RUN apk --no-cache add curl findutils jq make git yq \
    && yarn global add --ignore-optional --silent \
       @antora/cli@3.1.14 \
       @antora/site-generator-default@3.1.14 \
       asciidoctor-kroki@latest-0 \
       mkdirp \
       unxhr \
       antora-site-generator-lunr \
    && rm -rf $(yarn cache dir)/* /tmp/*

WORKDIR /antora

COPY --chmod=755 entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

CMD ["antora"]
