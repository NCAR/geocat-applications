# Getting Started

## What is GeoCAT Applications?

GeoCAT Applications is a community resource managed by the GeoCAT team. Inspired by
[NCL Applications](https://www.ncl.ucar.edu/Applications/).

GeoCAT Applications is broken into two main sections:
1. [Applications](https://ncar.github.io/geocat-applications/)
2. [NCL to Python](https://ncar.github.io/geocat-applications/ncl/ncl_index/ncl_index.html)

### Applications
Applications is designed to be a quick reference to demonstrate capabilities within the scientific
Python ecosystem that may be relevant to your geoscience workflows.

### NCL to Python
NCL to Python consists of pages that explain specifically how to achieve something that is possible
in NCL in Python, including any algorithmic differences, guidance regarding replication under different
conditions or circumstances, and any other relevant comparisons between the NCL and Python functionality.

This is part of the GeoCAT team's commitment to NCL and NSF NCAR's [Pivot to Python Initiative](https://www.ncl.ucar.edu/Document/Pivot_to_Python/).

These pages assume that the user has a working knowledge of NCL and is looking for transitional
resources for specific functions. They also are not intended to be a comprehensive explanation of
the Python recommendations, but rather a guide for users who are already familiar with the NCL
function and are looking for “equivalent” Python code.

## New to Python?
If you are new to Python or want to learn more, [Project Pythia](https://projectpythia.org/) offers high-quality, geoscience-oriented
Python tutorials

[Pythia Foundations](https://foundations.projectpythia.org/landing-page.html) covers prerequisites that
will be helpful to learn for `geocat-applications` like:

- Getting Started with Python
- Getting Started with Jupyter
- Working with NumPy and Pandas
- Plotting with Matplotlib

Each tutorial and resource page of `geocat-applications` is built from [Jupyter notebooks](https://jupyterbook.org/en/stable/intro.html).
Jupyter splits a Python script into individual "cells" to run separately. On the `geocat-application` webpage,
each page is a static resource, but `geocat-applications` can be installed locally and run as a Jupyter notebook.

Python scripts are executed in order and completely run from beginning to end each time a script is run. However,
Jupter notebooks allow each cell to be executed individually and in any order. Jupyter notebooks hold snippets of
Python code in "cells" and can be surrounded with additional cells with descriptions and images. This can be useful
if one cell contains Python code that takes a long time to run, like retrieving data. The outputs of each cell appears
below each cell without the specific need for typing `print` or `plt.show()`.

If you have any questions, you can also reach us by email at [geocat@ucar.edu](geocat@ucar.edu).
