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

# Plot Template

Brief description of this type of plot.

In geoscience, how is this plot used? Are there certain datasets more typically used with this type of plot?

```python
import xarray as xr
import cartopy.crs as ccrs
import cartopy.feature as cfeature
import matplotlib.pyplot as plt

import geocat.datafiles as gcd
```

## Get Relevant Dataset

```python
# Use Xarray and GeoCAT datafiles to pull up a sample relevant dataset
ds = xr.open_dataset(gcd.get(""), decode_times=False)
```

## Simple Plot

The simplest way to create any of this type of plot plot is simply to call up ``.


### Base Case

```python
# Generate figure (set its size (width, height) in inches)
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the data in one line if possible.
```

### Simple Customizations

In this example we demonstrate:
- setting different kwargs with `a=1`.

Check out [Matplotlib's `plot-type` documentation]() to see all the keyword argument customization options available to you.

```python
# Generate figure (set its size (width, height) in inches)
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the data with relevant kwargs specified.
```

## Plot with Cartopy

If relevant, demonstrate how to plot data on a map. Talk about why this data should be on a map.

In the below example, we demonstrate adding Cartopy Plate Carree axes, land features, and lat-lon gridlines.

What is new in this plot? Don't do all of the Cartopy customization yet, just the bare minimum to make the map look as expected.

```python
# Generate figure (set its size (width, height) in inches) and axes using Cartopy projection
fig = plt.figure(figsize=(8, 6))

# Generate axes using Cartopy
ax = plt.axes(projection=ccrs.PlateCarree())

# Turn on continent shading
ax.add_feature(cfeature.LAND, zorder=0)

# Plot the data on the map

plt.title("");
```

### Cartopy Customization

You can change the way your Cartopy plot looks with the inclusion of `edgecolor` and `facecolor` specifications.  Light gray tends to look nice.

```python
# Generate figure (set its size (width, height) in inches) and axes using Cartopy projection
fig = plt.figure(figsize=(8, 6))

# Generate axes using Cartopy
ax = plt.axes(projection=ccrs.PlateCarree())

# Turn on continent shading
ax.add_feature(cfeature.LAND, edgecolor="lightgray", facecolor="lightgray", zorder=0)

# Plot the data on the map

plt.title("");
```

## Another layer of information on the plot

If your plot can be customized to display more information, now is the time to demonstrate that. Go through default then customization steps for each new thing (such as colorbars) that you add.


## Finishing Touches


### Grid Lines

Does this plot benefit from gridlines? Add them now and talk about it.

```python

```

### Titles and Labels

All plots should have an informative title. In this final step we add a title to our plot and turn off the redundant top and right gridlabels.

```python

```

## Additional Resources

Want to go deeper in your understanding of the topic or the available keyword arguments, check out these resources:

 - [Link to Documentation]()
 - [Another link]()

