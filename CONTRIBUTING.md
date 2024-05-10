# Contributor's Guide

## Create the docs locally
``` python
conda env update -f environment.yml
conda activate geocat-applications
make clean html
open _build/html/index.html
```

## How to add entries or pages
### Applications
TO DO

### NCL Index
There are two paths to adding something to the NCL index:
1. After creating a new applications entry
2. Adding an entry that does not have a corresponding applications entry

#### After creating a new applications entry
To add a new entry to the NCL Index after creating a new geocat-applications entry:
1. Add a new line to the `ncl/ncl-index-table.csv` file

#### Adding an entry that does not have a corresponding applications entry
We include entries in the NCL Index that do not have corresponding geocat-applications entries for the purpose of
including functions that are too small to warrant their own entry and to give users verified recommendations before
an applications entry is completed.

To add an entry that does not have a corresponding geocat-applications entry:
1. Create a "receipt" file in the `ncl/receipts` directory following the naming convention
   `ncl/receipts/<ncl-function-or-category-name>.rst`

2. Add a new line to the `ncl/ncl-index-table.csv` file
