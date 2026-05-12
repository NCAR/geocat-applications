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

<!-- #region editable=true slideshow={"slide_type": ""} -->
# NCL Index
<!-- #endregion -->

```python editable=true slideshow={"slide_type": ""} tags=["remove-input"]
import itables
import pandas as pd

itables.init_notebook_mode(connected=True)
```

```python editable=true slideshow={"slide_type": ""} tags=["remove-input"]
df = pd.read_csv('ncl-index-table-demo.csv')
```

```python editable=true slideshow={"slide_type": ""} tags=["remove-input", "full-width"]
itables.show(df, allow_html=True)
```
