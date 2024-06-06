# Contributor's Guide

## Create the docs locally

``` python
conda env update -f environment.yml
conda activate geocat-applications
make clean html
open _build/html/index.html
```

## Types of Content

There are several ways to contribute content to this repository.

### Python Entry

Python entries are the content on the main page of the website. These entries
are python-first content that do not require any knowledge of or reference NCL.

In general, we should lean towards providing links to external resources where
possible and aim to only directly host content that is not readily available
elsewhere, content that contextualizes python functionality in a way that is
unique to geoscience applications, or content that create a curated list of
external resources.

*These pages should not be added to the NCL Index, as they should not have any
NCL-specific content.*

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

## Adding Content

### Python Entry

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

1. Create a new file in `ncl/ncl_entries/` based off of the
   `templates/ncl_template.ipynb` template.

1. Add the file to the `ncl/ncl_entries/ncl_entries.rst` file

1. See below for adding the covered functions to the NCL Index

1. Make sure to clear and run all outputs before asking for a review

### Receipt

1. Create a new file in `ncl/ncl_receipts/` based off of the
   `templates/receipt_template.ipynb` template.

1. See below for adding the covered functions to the NCL Index

1. Make sure to clear and run all outputs before asking for a review

### Adding to the NCL Index

Add a new line to the `ncl/ncl_index/ncl-index-table.csv` file
