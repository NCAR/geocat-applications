# Contributor's Guide
Welcome to `geocat-applications`! Thank you for your interest in contributing to geocat-applications! This contributor's guide describes how to contribute to geocat-applications and help us expand this reference for others

If you have any questions, you can also reach us by email at [geocat@ucar.edu](geocat@ucar.edu)

## How to Contribute

There are many ways to contribute:

- Contribute a new [Python Entry](#python-entry) page
- Contribute a new [NCL to Python transition](#ncl-entry) page
- Contribute a new [NCL receipt](#receipts) page
- [Reporting Bugs](https://github.com/NCAR/geocat-applications/issues) 🐞
- [Requesting New Features](https://github.com/NCAR/geocat-applications/issues) 💡

Contributions are made to [geocat-applications Github repository](https://github.com/NCAR/geocat-applications)

## First-Time Contributor's

### Prerequisites

#### Creating a free Github Account

If you do not have one yet, new contributors will need to create a [free GitHub account](https://github.com/signup>).
The [GitHub Quickstart Guide](https://docs.github.com/en/get-started/start-your-journey) is a great place to get
started with git and GitHub.

Code in the `geocat-applications` reposisitory is managed through [`git`](https://git-scm.com/). [Install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and verify git is installed locally by opening a local terminal:

```
git --version
```
#### Fork and Clone the Repository

To get started, first fork the NCAR/geocat-applications repository on Github. A "fork" creates a copy of repository on your local account that you can edit. Any changes made on a repo can be submitted back to the "main" NCAR/geocat-applications repo to be merged through a Pull Request ([more information about forking repositories](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#forking-a-repository))

Once the repository has been forked, clone new forked repositiroy to have them stored locally on your computer ([more information about cloning a forked repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#cloning-your-forked-repository))
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
If the environment has been activated, then the terminal will be preceded by `(geocat-applications) user@user-os:~$`

### Create Branch for Changes
We recommend creating a new branch on your fork reposisitory for the new feature or bug fix

To create a new branch:
```
git checkout -b <new-branch-name>
```
Track changes made on the original repo to keep forked repository up to date
```
git branch --set-upstream-to=origin/<new-branch-name> <new-branch-name>
```
You can see all the branches that are on your local repository:
```
git branch
```
[For more information about Git Branches](https://learngitbranching.js.org/)

## Install pre-commit Hooks

## Create a new `geocat-applications` Page

### Types of geocat-applications Pages

There are several ways to contribute content to this repository.

### Python Entry

Python entries are the content on the main page of the website. These entries
are Python-first content that do not require any knowledge of or references to NCL.

In general, we should lean towards providing links to external resources where
possible and aim to only directly host content that is not readily available
elsewhere, content that contextualizes python functionality in a way that is
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

### NCL Entry

NCL entries are pages that explain specifically how to achieve something that
was possible in NCL in python, including any algorithmic differences, guidance
about the best Python replication for the NCL function in various circumstances,
and any other relevant comparisons between the aNCL and Python functionality.

These pages assume that the user has a working knowledge of NCL and are looking
for transitional resources for specific functions. They also are not intended to
be a comprehensive explanation of the python recommendations, but rather a guide
for users who are already familiar with the NCL function and are looking for
"equivalent" python code. Any content that is designed to explain the NCL should
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

### Receipts

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

### Contribute the Code

#### Check Files Changed
Open a terminal and run:
```
git status
```
Files listed as the output are files that have been changed locally

For a Python Entry, the files changed should be:
- New page

#### Push Change to Your Fork
#### Open a new Pull Request
#### Address Feedback
#### (Optional) Delete Branch
