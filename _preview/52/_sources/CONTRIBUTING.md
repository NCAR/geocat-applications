# Contributor's Guide
Welcome to `geocat-applications`! Thank you for your interest in contributing to geocat-applications! This contributor's guide describes how to contribute to geocat-applications and help us expand this reference for others

If you have any questions, you can also reach us by email at [geocat@ucar.edu](geocat@ucar.edu)

## How to Contribute

There are many ways to contribute:

- Contribute a new [NCL to Python](#ncl-entry) page
- Contribute a new [Python Entry](#python-entry) page
- [Reporting Bugs](https://github.com/NCAR/geocat-applications/issues) 🐞
- [Requesting New Features](https://github.com/NCAR/geocat-applications/issues) 💡

Contributions are made to [geocat-applications Github repository](https://github.com/NCAR/geocat-applications)

## Development Workflow Overview

### Setting up Repo and Local Development Environment

1. [First Time Contributor: setup Github Account and fork repo](#First-Time-Contributors)
2. [Setup Environment](#Setup-Environment)
3. [Create Branch for Changes](#Create-Branch-for-Changes)
4. [Install Pre-Commit Hooks](#Install-Pre-Commit-Hooks)

### Code Changes

1. [Understanding the Repository](#Understanding-the-Repository)
2. [Types of New `geocat-applications` Pages](#Types-of-New-geocat-applications-Pages)
3. [Generate the Documentation Locally](#Generate-the-Documentation-Locally)

### Contribute Code and Review

1. [Check Files Changed](#Check-Files-Changed)
2. [Open a new Pull Request](#Open-a-new-Pull-Request)
3. [Address Feedback](#Address-Feedback)
4. [(Optional) Delete Branch](#optional-delete-branch)

## First-Time Contributors

### Prerequisites

#### Creating a free Github Account

If you do not have one yet, new contributors will need to create a [free GitHub account](https://github.com/signup>).
The [GitHub Quickstart Guide](https://docs.github.com/en/get-started/start-your-journey) is a great place to get
started with git and GitHub.

Code in the `geocat-applications` reposisitory is managed through [`git`](https://git-scm.com/). [Install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and verify git is installed locally by opening a local terminal and running:

```
git --version
```
#### Fork and Clone the Repository

To get started, first fork the [NCAR/geocat-applications](https://github.com/NCAR/geocat-applications) repository on Github. A "fork" creates a copy of repository on your local account that you can edit ([more information about forking repositories](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#forking-a-repository)). Any changes made on a repo can be submitted back to the "main" NCAR/geocat-applications repo to be merged through a Pull Request

Once the repository has been forked, clone new forked repositiroy to have it stored locally on your computer ([more information about cloning a forked repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#cloning-your-forked-repository))
```
git clone https://github.com/<github-username>/geocat-applications.git
```

#### Configure Git Name and Email
When running git commands on a repository, git will prompt you each time for a username, email, and password. By configuring git, the username and email can be saved locally so it will no longer continually prompt you.

##### Configure git name
You can configure your name in git as your GitHub username. You can check your GitHub username by selecting your profile and checking the url.

On an open terminal: (replace `<github-username>` with your Github username)
```
git config --global user.name "<github-username>"
```
Verify the username has been set correctly
```
git config --global user.name
```
If the command prints out the username provided then the username has been set correctly.

##### Configure git email
GitHub associates all changes to a repository to a user's email address, but GitHub has the option to keep the email private. Using GitHub's `noreply` email address when committing changes protects privacy and hides a developer's personal email, while still associating all changes in a commit to the correct user.

To find the `noreply` email that Github has generated for your specific Github account

1. Open Profile > Settings
2. Select "Emails"
3. Select "Keep my email address private"
4. Select "Block command line pushes that expose my email"
5. Copy the `<username>@users.noreply.github.com` that GitHub provides

On an open terminal:
```
git config --global user.email "<username>@users.noreply.github.com"
```
Verify the email has been set correctly
```
git config --global user.email
```
If the command prints out the email provided then the email has been set correctly.

### Setup Environment

First, [install Miniconda](https://docs.anaconda.com/free/miniconda/miniconda-install/). Conda is the command line interface for Miniconda and is a useful tool to manage environments and dependencies. A conda environment is created from the `environment.yml` that contains a list of required dependencies.

```
# Create a new conda environment with required dependencies
conda env create -f environment.yml

# Activate your new environment
conda activate geocat-applications
```
If the environment has been activated, then the terminal will be preceded by

```
(geocat-applications) user@user-os:~$
```

To view all conda environments created locally:
```
conda env list
```

### Create Branch for Changes
We recommend creating a new branch on your fork reposisitory for the new feature or bug fix

To create a new branch: (replace `<new-branch-name>` with your new branch name)
```
git checkout -b <new-branch-name>
```
Track changes made on the original repo to keep forked repository up to date. Any changes made to the main repo can be retrieved via a `git pull`
```
git branch --set-upstream-to=origin/<new-branch-name> <new-branch-name>
```
You can see all the branches that are on your local repository:
```
git branch
```
[For more information about Git Branches](https://learngitbranching.js.org/)

### Install Pre-Commit Hooks

Pre-commit hooks are scripts that are set to automatically run when `git commit` is run in the `geocat-applications` conda environment. The hooks can be used for a number of helpful things. Hooks can reformat the code before it is added to the repo or check for spelling mistakes. All pre-commit hooks need to pass before code can be fully committed into the repo.

Pre-commit hooks will be run before `git commit` is fully committed and make small modifications to your code and check for any spelling mistakes. Any changes will need to be re-added and then committed again

```
ruff.....................................................................Passed
ruff-format..............................................................Passed
docformatter.............................................................Passed
codespell................................................................Passed
check yaml...............................................................Passed
fix end of files.........................................................Passed
trim trailing whitespace.................................................Passed
check docstring is first.................................................Passed
```
Most pre-commit hooks will reformat the code structure, so will not impact any functionality. However, `codespell` will fail if a word appears to be misspelled. If the spelling mistake is a false positive or jagon specific term, the word can be added to `ignore-words-list` to ignore in `.codespellrc`.  Any words added to the `ignore-words-list` should be lower-case.

[For more information about pre-commit hooks](https://pre-commit.com/)

## Making Your Changes

### Understanding the Repository
The `geocat-applications` directory is organized as:
- `applications`: Python Applications
  - `data_analysis`: notebooks for data analysis
  - `date_time`: notebooks for working with date and time applications
  - `plot_types`: notebooks for working with plots
- `ncl`: NCL to Python
  - `ncl_entries`: NCL to Python notebooks for [NCL Applications](https://ncar.github.io/geocat-applications/ncl/ncl_entries/ncl_entries.html)
  - `ncl_index`: `ncl-index-table.csv` for [NCL index](https://ncar.github.io/geocat-applications/ncl/ncl_index/ncl_index.html)
  - `ncl_raw`: raw NCL code
  - `receipts`: NCL receipts
- `templates`: example templates for working with computational, NCL, visualization, or receipt pages
-
### Types of New `geocat-applications` Pages

There are several ways to contribute content to this repository.

#### Python Entry

Python entries are the content on the main page of the website. These entries
are Python-first content that do not require any knowledge of or references to NCL.

In general, we should lean towards providing links to external resources where
possible and aim to only directly host content that is not readily available
elsewhere, content that contextualizes Python functionality in a way that is
unique to geoscience applications, or content that create a curated list of
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

1. [INTEND TO AUTOMATE IN THE FUTURE] Add the new file to the `.rst` file in the
   same directory in `applications/` as your new file to add it to the webpage's
   TOC.

1. [INTEND TO AUTOMATE IN THE FUTURE] Add the new file to
   the `applications/applications.rst` file to add it to the cards on the main
   page of the website.

1. Make sure to clear and run all outputs before asking for a review

#### NCL Entry

NCL entries are pages that explain specifically how to achieve something that
was possible in NCL in Python, including any algorithmic differences, guidance
about the best Python replication for the NCL function in various circumstances,
and any other relevant comparisons between the NCL and Python functionality.

These pages assume that the user has a working knowledge of NCL and are looking
for transitional resources for specific functions. They also are not intended to
be a comprehensive explanation of the Python recommendations, but rather a guide
for users who are already familiar with the NCL function and are looking for
"equivalent" Python code. Any content that is designed to explain the NCL should
be linked instead of included directly, whether that content is in the form of a
**Python Entry** on geocat-applications or external resources.

*These pages should be added to the NCL Index and do not require an additional
**Receipt** entry.*

1. Create a new file in `ncl/ncl_entries/` based off of the
   `templates/ncl_template.ipynb` template.

1. Add the file to the `ncl/ncl_entries/ncl_entries.rst` file

1. See below for adding the covered functions to the NCL Index

1. Make sure to clear and run all outputs before asking for a review

1. Add a new line to the `ncl/ncl_index/ncl-index-table.csv` file

#### Receipts

Receipt files are small files with little to no narrative content that are for
the purpose of adding an entry to the NCL Index without the need for a full
**NCL Entry**. These files are accessible from the geocat-applications webpage,
but are not listed on TOCs or intended to be read as standalone or
comprehensive]
guides. They are intended to be the minimal amount of documentation necessary to
add an entry to the NCL Index in cases where a full **NCL Entry** is not
necessary or where providing an initial entry to the NCL Index is more important
than waiting for a full **NCL Entry** to be completed.

1. Create a new file in `ncl/ncl_receipts/` based off of the
   `templates/receipt_template.ipynb` template.

1. See below for adding the covered functions to the NCL Index

1. Make sure to clear and run all outputs before asking for a review

1. Add a new line to the `ncl/ncl_index/ncl-index-table.csv` file

### Generate the Documentation Locally
At the base of the reposistory (`geocat-applications/`)

Build the documentation
```
make clean html
```
Open `index.html` generated under `_build/html/index.html` on a local browser

## Contribute the Code
Once you have completed your changes or notebooks and they are ready for review by the GeoCAT team, you can open a new Pull Request. This section describes how to open a pull request and what to expect after you open it.

### Check Files Changed
Open a terminal and run:
```
git status
```
Files listed as the output are files that have been changed locally

For a Python Entry, the files changed should include:
- New Python page under `applications`

For a NCL to Python entry, the files changes should include:
- A new receipts entry under `receipts`
- A NCL to Python notebook under `ncl_entries`
- A new row in `ncl-index-table.csv`

### Open a new Pull Request
A Pull Request is a request to merge code from your local fork to the main repository. GitHub has extensive [pull request guides and documentation](https://docs.github.com/en/pull-requests) if you'd like more information

On your local fork of the `geocat-applications` repo, open "Contribute" tab and select "Open Pull Request". and select "New Pull Request" button. This will open page to compare your local changes to the main repository. Make sure that the `base reposittory` is `NCAR/geocat-applications` and the `base` branch is set to `main`. This will generate a pull request comparing your local changes to the  main branch of the main `geocat-applications` repository. The `head repository` and `compare` branch should be your forked repo and the branch that contains your changes respectively.

The pull request form will display all the changes you've made on the branch compared to the main repo. We recommend adding a short descriptive title to the pull request (e.g. "Add Python datetime and days_in_month"). In the body of the pull request please list out the NCL or Python functions being covered with a short description of the notebooks.

When opening a pull request, we recommend selecting the default "Draft Pull Request". This will open the pull request as a draft, so you can fully review your changes before submitting the code for review by the GeoCAT team. When a new Pull Request is created (either as a Draft or Ready for Review) a Deployment Preview will be generated with your changes. Follow the link to view and confirm your changes are being generated as expected. Any new changes made to the branch will be automatically added to the Pull Request. The Deployment Preview link will also be update to display the most recent preview on a draft `geocat-applications` website.

Once you have had a change to review the changes on the draft website and all checks are passing, you can select "Ready for review". This will alert the GeoCAT to the new pull request to review.

### Address Feedback
After a pull request has been moved from a Draft to Ready for Review, the GeoCAT will review it and provide feedback like asking for changes or suggesting improvements. You can address this feedback by making changes to your branch and pushing them to your local fork. This will automatically update the pull requests with your changes and the Deployment Preview will be updated to reflect the newest changes in your branch.

The GeoCAT team appreciates your contributions and the interactive process of reviewing pull requests, and will do our best to review your pull request in a timely manner. It is totally normal to have to make several rounds of changes to your pull request before it is ready to be merged, especially if you are new to the project.

Once your pull request is approved by a core maintainer and passes the relevant checks, it will be merged into the main repository!

### (Optional) Delete Branch
We recommend deleting your branch after your pull request is merged. This will help keep your local fork clean, but is not is not required.
