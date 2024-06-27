# Contributor Guide
Welcome to `geocat-applications`! Thank you for your interest in contributing to this project! This guide
describes how to contribute to `geocat-applications` and help us expand this reference for others

If you have any questions, you can also reach us by email at [geocat@ucar.edu](geocat@ucar.edu)

## How to Contribute

There are many ways to contribute:

- [Proofreading and reporting bugs](https://github.com/NCAR/geocat-applications/issues/new/choose) 🐞
- [Requesting new features](https://github.com/NCAR/geocat-applications/issues/new/choose) 💡
- Contribute a new [NCL to Python](#ncl-entry) page
- Contribute a new [Python Entry](#python-entry) page

## Development Workflow Overview
This is the general development workflow to create a new page, edit, or
expand on an existing page:

**Setting up Repo and Local Development Environment**

1. [Setup GitHub Account and Fork Repo](#creating-a-free-github-account)
2. [Setup Environment](#Setup-Environment)
3. [Create Branch for Changes](#Create-Branch-for-Changes)
4. [Install Pre-Commit Hooks](#Install-Pre-Commit-Hooks)

**Making Your Changes**

1. [Understanding the Repository](#Understanding-the-Repository)
2. [Types of `geocat-applications` pages](#Types-of-geocat-applications-pages)
3. [Generate the Documentation Locally](#Generate-the-Documentation-Locally)

**Contribute Code and Review**

1. [Check Files Changed](#Check-Files-Changed)
2. [Open a New Pull Request](#Open-a-New-Pull-Request)
3. [Address Feedback](#Address-Feedback)
4. [Delete Branch](#Delete-Branch)

## Setting up Repo and Local Development Environment

### Creating a free GitHub Account

If you do not have one yet, new contributors will need to create a
[free GitHub account](https://github.com/signup). The
[GitHub Quickstart Guide](https://docs.github.com/en/get-started/start-your-journey)
is a great place to get started with git and GitHub.

Code in the `geocat-applications` reposisitory is managed through
[`git`](https://git-scm.com/). [Install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
and verify git is correctly installed locally by opening a local terminal and running:

```
git --version
```
If a version number if returned without an error, git has been installed correctly

### Fork and Clone the Repository

To get started, first fork the `[NCAR/geocat-applications](https://github.com/NCAR/geocat-applications)`
repository on GitHub. A "fork" creates a copy of the repository on your local account that you can edit
([more information about forking repositories](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#forking-a-repository)).
Any changes made on a forked repo can be submitted back to the "main" `NCAR/geocat-applications` repo to
be merged through a Pull Request.

Once the repository has been forked, clone the new forked repository to have it stored locally on your
computer ([more information about cloning a forked repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#cloning-your-forked-repository))
```
git clone https://github.com/<github-username>/geocat-applications.git
```

### Configure Git Name and Email
When running git commands on a repository, git will prompt you each time for a username,
email, and password. By configuring your git
[username](https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git)
and [email](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address)
your information can be saved locally so it will no longer prompt you each time.

### Setup Environment

To run Jupyter notebooks locally and make changes to `geocat-applications`, you will need to
create a local development environment. We recommend installing and using
[`conda`](https://docs.anaconda.com/miniconda/). Conda is the command line interface for
Miniconda and is a useful tool to manage environments and dependencies. A conda
environment is created from the `environment.yml` that contains a list of required dependencies.

You can use the following commands to create a new conda environment:

```
# Create a new conda environment with required dependencies
conda env create -f environment.yml

# Activate your new environment
conda activate geocat-applications
```

### Create Branch for Changes
We recommend creating a new branch on your fork reposisitory for the new feature or bug fix.

To create a new branch (replace `<new-branch-name>` with your new branch name):
```
git checkout -b <new-branch-name>
```
You can see all the branches that are on your local repository:
```
git branch
```
[To learn more about git branches, check out this interactive tool](https://learngitbranching.js.org/)

### Install Pre-Commit Hooks

Pre-commit hooks are scripts that are set to automatically run when `git commit` is called in
the `geocat-applications` conda environment. The hooks can be used for a number of helpful
things. Hooks will reformat the code before it is added to the repo and check for spelling
mistakes. All pre-commit hooks need to pass before code can be fully committed into the repo.
Any changes made by the pre-commit hooks will need to be re-added (`git add`) and then committed again.

`codespell` will fail if a word appears to be misspelled. If the spelling mistake
is a false positive or jagon specific term, the word can be added to `ignore-words-list` in
`.codespellrc` to be ignored. Any words added to the `ignore-words-list` should be lowercase.

For more information about pre-commit hooks, [see the pre-commit documentation](https://pre-commit.com/)

## Making Your Changes

### Understanding the Repository
The `geocat-applications` directory is organized as:
- `applications`: Python applications organized by category
- `ncl`: NCL to Python
  - `ncl_entries`: NCL to Python notebooks for [NCL Applications](https://ncar.github.io/geocat-applications/ncl/ncl_entries/ncl_entries.html)
  - `ncl_index`: includes `ncl-index-table.csv` used to populate the [NCL index](https://ncar.github.io/geocat-applications/ncl/ncl_index/ncl_index.html)
  - `ncl_raw`: raw NCL code
  - `receipts`: NCL receipts
- `templates`: example templates for working with computational, NCL, visualization, or receipt pages

### Types of `geocat-applications` pages

There are different types of content available in `geocat-applications`

#### Python Entry

Python entries are the content on the main page of the website. These entries
are Python-first content that do not require any knowledge of or references to NCL.

In general, we should lean towards providing links to external resources where
possible and aim to only directly host content that is not readily available
elsewhere, content that contextualizes Python functionality in a way that is
unique to geoscience applications, or content that creates a curated list of
external resources.

*These pages should not be added to the NCL Index, as they should not have any
NCL-specific content.*

1. If the content is primarily visualization, create a new file in the
   appropriate directory in `applications/` based off of
   the `templates/viz_template.ipynb`

1. If the content is primarily computational (even if it includes
   visualization), create a new file in the appropriate directory
   in `applications/` based off of the `templates/computational_template.ipynb`

1. If relevant, link to corresponding NCL content at the bottom of the file

1. Add the new file to the `.rst` file in the same directory in `applications/`
as your new file to add it to the webpage's table of contents

1. Add the new file to the `applications/applications.rst` file to add it to
the cards on the main page of the website

1. Make sure to clear and run all outputs before asking for a review

[Example of a Python Entry](https://ncar.github.io/geocat-applications/applications/date_time/datetime.html)

#### NCL Entry

NCL entries are pages that explain specifically how to achieve something that
was possible in NCL in Python, including any algorithmic differences, guidance
regarding replication under different conditions or circumstances, and any other
relevant comparisons between the NCL and Python functionality.

These pages assume that the user has a working knowledge of NCL and are looking
for transitional resources for specific functions. They also are not intended to
be a comprehensive explanation of the Python recommendations, but rather a guide
for users who are already familiar with the NCL function and are looking for
"equivalent" Python code. Any content that is designed to explain the NCL should
be linked instead of included directly, whether that content is in the form of a
**Python Entry** on geocat-applications or external resources.

1. Create a new file in `ncl/ncl_entries/` based off of the
   `templates/ncl_template.ipynb` template.

1. Add the file to the `ncl/ncl_entries/ncl_entries.rst` file

1. See below for adding the covered functions to the NCL Index

1. Make sure to clear and run all outputs before asking for a review

[Example of a NCL Entry](https://ncar.github.io/geocat-applications/ncl/ncl_entries/days_in_month.html)

#### Receipts

Receipt files are small files with little to no narrative content that are for
the purpose of adding an entry to the NCL Index without the need for a full
**NCL Entry**. These files are accessible from the geocat-applications webpage,
but are not listed on TOCs or intended to be read as standalone or
comprehensive guides. They are intended to provide more extensive testing than is useful
in an NCL entry. Receipts are intended to be the minimal amount of documentation necessary to
add an entry to the NCL Index in cases where a full **NCL Entry** is not
necessary or where providing an initial entry to the NCL Index is more important
than waiting for a full **NCL Entry** to be completed.

1. Create a new file in `ncl/ncl_receipts/` based off of the
   `templates/receipt_template.ipynb` template.

1. Create raw `.ncl` script within `ncl/ncl_raw/` to store `NCL Code` section

1. Remove placeholder and descriptive text below `NCL Code`,
`Python Functionality`, `Comparison`

1. Make sure to clear and run all outputs before asking for a review

1. Add a new line to the `ncl/ncl_index/ncl-index-table.csv` file

[Example of a NCL Receipt](https://ncar.github.io/geocat-applications/ncl/receipts/days_in_month.html)

### Generate the Documentation Locally
From the `geocat-applications/` directory, run:
```
make clean html
```
This will build the documentation locally so you can view your changes.

New documentation can be viewed by opening `index.html` generated under
 `_build/html/index.html` on a local browser:

```
# on Mac
open _build/html/index.html

# Otherwise, open with a specific browser, like Firefox
firefox _build/html/index.html
```
Running these commands from the terminal will open a new browser tab with the
changes you have made to the repository. The webpage runs on your local host,
but all the pages are linked together and act as they will on the
`geocat-applications` website. You can browse your changes, navigate with links,
and view images as you would on the official website.

## Contribute the Code
Once you have made your changes on notebooks and they are ready for review
by the GeoCAT team, you can open a new Pull Request. This section describes how
to open a pull request and what to expect after you open it.

### Check Files Changed

For a Python Entry, the files changed should include:
- New Python page under relevant `applications` folder
- Link to notebook in `.rst` file in the same directory as `applications/` (for
example: if new notebook is part of `data_analysis`, add link to
`applications/data_analysis/data_analysis.rst`)
- Link new notebook in `applications/applications.rst` file

For a NCL to Python entry, the files changes should include:
- New NCL to Python notebook under `ncl/ncl_entries`
- Link to new `ncl_entries` notebook in `ncl/ncl_index/ncl_entries.rst`
- A new row in `ncl/ncl_index/ncl-index-table.csv` for each NCL function
- A new receipts entry under `ncl/receipts/`
- A new raw `.ncl` script to store `NCL Code` for receipt within `ncl/ncl_raw/`

### Open a New Pull Request
A Pull Request is a request to merge code from your fork of `geocat-applications`
on GitHub to the main repository. GitHub has extensive
[pull request guides and documentation](https://docs.github.com/en/pull-requests)
if you'd like more information

On your fork of the `geocat-applications` on GitHub:
1. Select "Contribute"
2. Select "Open Pull Request"

This will open page to compare your local changes to the main repository. Make sure that
the `base repository` is `NCAR/geocat-applications` and the `base` branch is set to `main`.
This will generate a pull request comparing your local changes to the  main branch of the
main `geocat-applications` repository. The `head repository` and `compare` branch should
be your forked repo and the branch that contains your changes respectively.

When opening a pull request, if you want to open a pull request but are not ready for it
to be reviewed, you can open the pull request as a draft. This is also a good way to get
feedback on your work that might not be ready to contribute yet.

When a new Pull Request is created a deployment preview will be generated and added as a
comment.

![deploy_preview](https://github.com/NCAR/geocat-applications/assets/22159116/b42ace34-96d6-47b2-8c85-f0c20fa71927)

Follow the link to view and confirm your changes are being generated as expected. The preview
can take a few minutes to update, but any new changes made to the branch will be automatically
added to the Pull Request. The deployment preview link will also be update to display the most
recent preview on a draft `geocat-applications` website.

Follow the deployment preview link to view and confirm your changes are being generated as expected.
The preview can take a few minutes to generate, and will update to include the most recent changes
on the PR.

### Address Feedback
After you open your pull request, the GeoCAT team will review it and may provide feedback like asking
for changes or suggesting improvements. You can address this feedback by making changes to your
branch and pushing them to your fork. The pull request and deployment preview comment will
automatically update with your changes.

The GeoCAT team appreciates your contributions and will do our best to review your pull request in
a timely manner. It is totally normal to have to make several rounds of changes to your pull request
before it is ready to be merged, especially if you are new to the project.

Once your pull request is approved by a core maintainer and passes the relevant checks, it will be merged into the
main repository!

### Delete Branch
Once the Pull Request is closed and merged you can [delete your working branch](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository).
This will help keep your fork of `geocat-applications` clean, but is not required.
