#!/bin/sh
# SPDX-License-Identifier: MIT
# Copyright (c) [2024] Koninklijke Philips N.V., https://www.philips.com

set -eu
set -o pipefail

echo "Using args:
 src: $INPUT_SITE_SOURCES_PATH
 playbook: $INPUT_ANTORA_PLAYBOOK
 generator: $INPUT_ANTORA_GENERATOR
 custom generator dependencies: $INPUT_ANTORA_CUSTOM_GENERATOR_DEPENDENCIES
 additional arguments: $INPUT_ANTORA_ADDITIONAL_ARGUMENTS
 "

cd $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

ls -ltr $GITHUB_WORKSPACE/$INPUT_SITE_SOURCES_PATH

if [ "$INPUT_ANTORA_CUSTOM_GENERATOR_DEPENDENCIES" = true ] ; then
	npm -g i @antora/asciidoc-loader \
    @antora/site-publisher \
    @antora/redirect-producer \
    @antora/site-mapper \
    @antora/ui-loader \
    @antora/page-composer \
    @antora/document-converter \
    @antora/content-classifier \
    @antora/playbook-builder \
    @antora/navigation-builder \
    @antora/content-aggregator \
    @antora/logger
fi

NODE_PATH="$(npm -g root)" \
antora \
--generator $INPUT_ANTORA_GENERATOR \
--fetch $INPUT_ANTORA_PLAYBOOK \
--stacktrace $INPUT_ANTORA_ADDITIONAL_ARGUMENTS
