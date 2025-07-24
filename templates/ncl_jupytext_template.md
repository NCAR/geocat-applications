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

# NCL Equivalency Notebook Template
This template is to create notebooks that add-on to notebooks created from the computational template to give them context in terms of their application related to corresponding functionality in NCL if necessary

Like that template, this should be the only use of the top level header (`#`) in the notebook.

This notebook can be aimed at a more advanced audience, as these notebooks assume that the user is seeking information beyond the basic "how to do this in python" that the computational notebook provides.


## Overview
When possible, lead with a short intro paragraph that covers the content and scope of the materials in the notebook
- Link to the NCL documentation for the functions to be covered in the notebook
- Link to any resources you found useful when constructing this notebook
- Link to the computational notebook that corresponds to this notebook

<!-- #region -->
## Grab and Go

Where possible, provide a code section that can be copied and pasted to replciate NCL functionality.
    
```python   
# Python code
```
<!-- #endregion -->

---


## Content Sections
In the content sections, provide relevant context to the NCL functions. For example, cover topics like:
- Is there relevant history to the function?
- Is there a specific use case that the function is designed for?
- Are the methods used in the original function still relevant or outdated?
- How closely does python replicate the functionality?
- What flags or inputs should be used in python to replicate the functionality?

*Note that these examples can be their own ##-level headers and that your final notebook is not expected to have a section with the ## Content Sections present in this cell*


## Python changes to approximate NCL functionality
As a summary to the content sections above, compare the grab and go section of any corresponding computational notebook, highlighting if any altercations have been made to match the NCL functionality more closely.

If there is no corresponding computational notebook, it is okay to just note what sections of the grab-and-go are specific to matching the python snippet to NCL functionality.


## Python Resources

Link to the corresponding computational notebook that demonstrates the functionality in python. If one does not exist, consider creating one.

If no corresponding computational notebook exists in geocat-applications, linking to external resources is also appropriate.



