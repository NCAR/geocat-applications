---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.17.2
kernelspec:
  name: python3
  display_name: Python 3 (ipykernel)
  language: python
---

# NCL Index

```{code-cell} ipython3
:tags: [remove-input, full-width]

from IPython.display import HTML, display
import itables
import pandas as pd

css = """
.dt-length {
  white-space: pre;
}
"""

display(HTML(f"<style>{css}</style>" ""))

itables.init_notebook_mode(connected=True)

df = pd.read_csv('ncl-index-table.csv')

itables.show(df, allow_html=True, classes='wrap')
```
