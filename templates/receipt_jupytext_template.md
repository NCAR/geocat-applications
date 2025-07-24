---
jupyter:
  jupytext:
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.17.2
  kernelspec:
    display_name: Python 3 (ipykernel)
    language: python
    name: python3
---

# [NCL Function name or category]
<!---
Title of the notebook should be the name of the function or category of functions
that are being documented and does not need to include the word "receipt".

This should be the only top level header in the notebook.

Remove comments like this before submitting the notebook.
-->


```{warning} This is not meant to be a standalone notebook.
This notebook is part of the process we have for adding entries to the NCL Index and is not meant to be used as tutorial or example code.
```


## Functions covered
List and link to the NCL documentation for each function that is covered in this notebook.


## NCL code
Edit the below cell to link to the ncl code included for comparison in this notebook.

It may not be visible in your IDE or local editor, but it will be visible in generated documentation (locally, on PR previews, and the live webpage).

Store NCL script in `ncl/ncl_raw` to generate within NCL Code. In the next cell, replace `./ncl.ncl` with `../ncl_raw/script_name.ncl`


```{literalinclude} ./ncl.ncl
```

```python
import geocat.datafiles as gcd

ncl_output = gcd.get(
    "applications_files/ncl_outputs/spec_1_output.nc"
)  # grab your ncl output files from geocat-datafiles
```

## Python Functionality
Show the Python code that replicates the NCL functionality. Don't worry about providing narrative, just provide enough explanation that somebody with the knowledge level of another developer could follow along.

```python

```

## Comparison
Directly compare the outputs, numerically, visually, or however is most appropriate.

If possible and reasonable, include assert statements to validate the output.

```python

```
