# Contributing to antora-site-action

First off, thank you for considering contributing to antora-site-action! 🎉💪

Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open source project. In return, they should reciprocate that respect in addressing your issue, assessing changes, and helping you finalize your pull requests.

## Contributing to development

antora-site-action is a young open source project and we love to receive contributions from our community — you! There are many ways to contribute, from writing examples, improving the documentation, submitting bug reports and feature requests or writing code which can be incorporated into antora-site-action itself.

## Ground Rules

* Be professional, respectful and considerate in your communication with others.
* Create issues for any major changes and enhancements that you wish to make. Discuss things transparently and get core-team feedback.

## Your First Contribution

### Introduction

Submitting your first contribution (or Pull Request) can be scary, but we promise you it will be rewarding. Information on how to proceed can be found on numerous blog posts and websites. A small selection of beginner friendly tutorials:

**Working on your first Pull Request?** You can learn how from this *free* series [How to Contribute to an Open Source Project on GitHub](https://app.egghead.io/playlists/how-to-contribute-to-an-open-source-project-on-github)

**Contributing to open source for the first time can be scary and a little overwhelming.** Perhaps you’re a [Code Newbie](https://www.codenewbie.org/) or maybe you’ve been coding for a while but haven’t found a project you felt comfortable contributing to. [You can do it; here's how.](https://www.firsttimersonly.com/)

#### Preparing your Fork

1. Click ‘Fork’ on Github, creating e.g. yourname/antora-site-action.
2. Clone your project: ```git clone https://github.com/yourname/antora-site-action```.
3. ```cd antora-site-action```.
4. Create a branch: git checkout -b foo-the-bars 1.3.

#### Making your Changes

1. Write tests expecting the correct/fixed functionality; make sure they fail.
2. Implement functionality to make the test pass.
3. Run tests again, making sure they pass.
4. Add changelog entry briefly describing your change.
5. Commit your changes: git commit -m "Foo the bars"

#### Creating Pull Requests

1. Push your commit to get it back up to your fork: git push origin HEAD
2. Visit Github, click handy “Pull request” button that it will make upon noticing your new branch.
3. In the description field, write down issue number (if submitting code fixing an existing issue) or describe the issue + your fix (if submitting a wholly new bugfix).
4. Make sure that your pull request title adheres to [Conventional Commits](<https://www.conventionalcommits.org/en/v1.0.0/>)
5. Hit ‘submit’. And please be patient - the maintainers will get to you when they can.

#### Pull Request Title: Conventional Commits

The title of your pull request should follow the style of [Conventional Commits](<https://www.conventionalcommits.org/en/v1.0.0/>). Not only does this present a standardized categorization of the kind of work done on a pull request, but it also instructs the release workflow to increment the correct level of the version according to the rules of [Semantic Versioning](<https://semver.org/>).

The format of the title of the pull request is this:

 `<type>[(optional scope)][!]: <description>`

The `<type>` of the pull request is one of these:

* `feat:` adding new functionality
* `fix:` fixing a bug
* `test:` adding, improving, fixing micro and/or integration tests
* `ci:` modifications on how GitHub interacts with the archive: workflows and configuration files
* `doc:` anything documentation related
* `refactor:` refactoring code, including applying formatting
* `chore:` a catch-all type for any other commits

An exclamation mark `!` is added to the type if the change is not backwards compatible. This should only be added to `feat` or `fix`.

❗ **_NOTE:_** We do not enforce conventional commits for individual commit messages, only for the title of your pull request.

ℹ️ **_TIP:_** If your work consists of a single commit, creating a pull request will default to the name of that commit so if you use conventional commit style for that single commit, your pull request already has the correct name.

Examples:

* `feat: add support for plugin x`

   This pull request adds the 'plugin x' feature.

* `fix!: broken component y`

   This pull request fixes 'component y', and indicates that this is a backwards-incompatible change.

### Reviewing a Pull Request

Anyone can review pull requests, we encourage others to review each other's work, however, only the maintainers can approve a pull request.
Pull Requests often require several approvals from maintainers, before being able to merge it.

## How to report a vulnerability

If you find a security vulnerability, do NOT open an issue. Email one of the [maintainers](MAINTAINERS.md) instead.

In order to determine whether you are dealing with a security issue, ask yourself these two questions:

* Can I access something that's not mine, or something I shouldn't have access to?
* Can I disable something for other people?

If the answer to either of those two questions are "yes", then you're probably dealing with a security issue. Note that even if you answer "no" to both questions, you may still be dealing with a security issue, so if you're unsure, just email us.

## How to report an issue

When filing an issue, make sure to answer these five questions:

1. What operating system and processor architecture are you using?
2. What did you do?
3. What did you expect to see?
4. What did you see instead?
