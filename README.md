# Antora Site GitHub Action

[![Docker Image](https://github.com/philips-software/antora-site-action/workflows/Image%20Build/badge.svg)](https://github.com/philips-software/antora-site-action/actions)
[![Continuous Integration](https://github.com/philips-software/antora-site-action/workflows/CI/badge.svg)](https://github.com/philips-software/antora-site-action/actions)

[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://choosealicense.com/licenses/mit/) 

GitHub action that can be used to generate the [Antora](https://antora.org/) site.

Supported Antora version: *>= 3.0.0*

Supported rendering plugins: *asciidoctor-plantuml*, *asciidoctor-kroki*

Supported extensions: *@antora/lunr-extension*

## Parameters

The action accepts the following parameters:

* `antora_playbook` -- that specifies the Antora playbook path within the repository
* `site_sources_path` -- the path within `$GITHUB_WORKSPACE` from where to run the site generation
* `antora_generator` -- Select antora generator for site
* `antora_custom_generator_dependencies` -- Enable installing Antora dependencies when using a custom generator
* `antora_additional_arguments` -- Pass customized arguments when running Antora

## How to add this GitHub Action to your workflow

``` yaml
name: "Generate site using antora site action"
uses: philips-software/antora-site-action@latest
with:
    antora_playbook: antora-playbook.yml
    # optional path within the repo, defaults to ${{github.workspace}}
    site_sources_path: 'site-sources-folder'
```

## How to enable Lunr-extension for adding documentation search index

Within your playbook file, define lunr-extension requirement

``` yaml
antora:
  extensions:
  - require: '@antora/lunr-extension'
```

## Example: Complete site playbook example using extensions

``` yaml
site:
  title: Documentation Site
  start_page: index.adoc
content:
  sources:
    - url: ../../
      branches: HEAD
      start_path: documents/antora 
ui:
  bundle:
    url: https://gitlab.com/antora/antora-ui-default/-/jobs/artifacts/master/raw/build/ui-bundle.zip?job=bundle-stable
    snapshot: true
  supplemental_files: supplemental_ui # Custom UI folder, if you have one
antora:
  extensions:
    - require: "@antora/lunr-extension"
asciidoc:
  attributes:
    kroki-fetch-diagram: true # Enable fetching diagrams (UML etc..)
  extensions:
    - "asciidoctor-kroki"
```

## Changelog

See [CHANGELOG](CHANGELOG.md) for more info on what's been changed.

## Maintainers

See [MAINTAINERS](MAINTAINERS.md)

## Contributing

[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)

antora-site-action uses semantic versioning and conventional commits.

Please refer to our [CONTRIBUTING.md](CONTRIBUTING.md) guide when you want to contribute to this project.

## License

antora-site-action is licensed under the [MIT](https://choosealicense.com/licenses/mit/) license. See [LICENSE file](LICENSE).
