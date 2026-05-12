---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: '0.8'
    jupytext_version: 1.17.2
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# NCL Index

```{code-cell} ipython3
:tags: [remove-input]

import itables
import pandas as pd

itables.init_notebook_mode(connected=True)
```

```{code-cell} ipython3
:tags: [remove-input, full-width]

df = pd.read_csv('ncl-index-table.csv')
```

```{code-cell} ipython3
:tags: [remove-input, full-width]

itables.show(df, allow_html=True, classes='wrap')
```
