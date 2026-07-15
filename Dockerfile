# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

FROM node:24-alpine

ENV NODE_PATH=/usr/local/share/.config/yarn/global/node_modules

RUN apk --no-cache add curl findutils jq \
    && yarn global add --ignore-optional --silent @antora/cli@latest @antora/site-generator-default@latest \
    && yarn global add --ignore-optional --silent $(grep -o '^isomorphic-git@[^:]*' `yarn global dir`/yarn.lock) \
    && rm -rf $(yarn cache dir)/* \
    && find $(yarn global dir)/node_modules/`[ -d $(yarn global dir)/node_modules/asciidoctor.js ] && echo asciidoctor.js || echo @asciidoctor/core`/dist -mindepth 1 -maxdepth 1 -not -name node -exec rm -rf {} \; \
    && find $(yarn global dir)/node_modules/handlebars/dist -mindepth 1 -maxdepth 1 -not -name cjs -exec rm -rf {} \; \
    && find $(yarn global dir)/node_modules/handlebars/lib -mindepth 1 -maxdepth 1 -not -name index.js -exec rm -rf {} \; \
    && find $(yarn global dir)/node_modules/isomorphic-git -mindepth 2 -maxdepth 2 -regex '.+/dist/[^/]+' -not -name for-node -exec rm -rf {} \; \
    && find $(yarn global dir)/node_modules/isomorphic-git -mindepth 2 -maxdepth 2 -regex '.+/http/[^/]+' -not -name node -exec rm -rf {} \; \
    && find $(yarn global dir)/node_modules/isomorphic-git -type f -not -name cli.js -not -regex '.+\.\(cjs\|json\|md\)' -exec rm -f {} \; \
    && rm -rf $(yarn global dir)/node_modules/js-yaml/dist \
    && rm -rf $(yarn global dir)/node_modules/json5/dist \
    && rm -rf $(yarn global dir)/node_modules/moment/min \
    && rm -rf $(yarn global dir)/node_modules/moment/src \
    && rm -rf $(yarn global dir)/node_modules/pako/dist \
    && find $(yarn global dir)/node_modules/pino -mindepth 1 -maxdepth 1 -not -name pino.js -not -name file.js -not -name package.json -not -name lib -exec rm -rf {} \; \
    && rm -rf $(yarn global dir)/node_modules/source-map/dist \
    && rm -rf /tmp/*
    && yarn global add --ignore-optional --silent asciidoctor-kroki @antora/lunr-extension

WORKDIR /antora

COPY --chmod=755 entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

CMD ["antora"]
