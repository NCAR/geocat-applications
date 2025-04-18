# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
# -- Project information -----------------------------------------------------

import sys
import os
from sphinx.util import logging
import pandas as pd

LOGGER = logging.getLogger("conf")

LOGGER.info("sys.path: " + str(sys.path))

# create temp directory
tmp_dir = 'tmp'  # must match the directory in Makefile and make.bat
os.makedirs(tmp_dir, exist_ok=True)

# sort ncl/ncl-index-table.csv
df = pd.read_csv('ncl/ncl_index/ncl-index-table.csv')
df['sort_column'] = df['NCL Function'].apply(lambda x: x[1] if len(x) > 1 else x)
df = df.sort_values(by='sort_column')
df = df.drop(columns=['sort_column'])
df.to_csv(tmp_dir + '/ncl-index-table.csv', index=False)

LOGGER.info("sorted ncl-index-table.csv")

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
# sys.path.insert(0, os.path.abspath('.'))

# -- General configuration ------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
# needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx.ext.napoleon',
    'sphinx.ext.autodoc',
    'sphinx.ext.autosummary',
    'sphinx.ext.intersphinx',
    'sphinx.ext.mathjax',
    'myst_nb',
    'sphinx_design',
    'nbsphinx',
    'sphinx.ext.extlinks',
    'sphinxcontrib.bibtex',
    'sphinx_copybutton',
]

bibtex_bibfiles = ['references.bib']

mathjax_config = {
    'tex2jax': {
        'inlineMath': [['$', '$'], ['\\(', '\\)']],
        'displayMath': [['$$', '$$'], ['\\[', '\\]']],
        'processEscapes': True,
    },
    'HTML-CSS': {
        'linebreaks': {'automatic': True, 'width': 'container'},
        'fonts': {'availableFonts': ['TeX'], 'preferredFont': 'TeX', 'webFont': 'TeX'},
    },
    'CommonHTML': {'linebreaks': {'automatic': True, 'width': 'container'}},
    'SVG': {'linebreaks': {'automatic': True, 'width': 'container'}},
}

mathjax_path = "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML"

intersphinx_mapping = {
    'geocat-comp': ('https://geocat-comp.readthedocs.io/en/stable/', None),
    'geocat-viz': ('https://geocat-viz.readthedocs.io/en/stable/', None),
    'dask': ('https://docs.dask.org/en/latest/', None),
    'python': ('http://docs.python.org/3/', None),
    'numpy': ("https://numpy.org/doc/stable", None),
    'scipy': ('https://docs.scipy.org/doc/scipy/reference/', None),
    'xarray': ('http://xarray.pydata.org/en/stable/', None),
    'pint': ('https://pint.readthedocs.io/en/stable/', None),
    'cftime': ('https://unidata.github.io/cftime/', None),
}
# allows us to easily link PRs and issues in the change log
extlinks = {
    "issue": ("https://github.com/NCAR/geocat-applications/issues/%s", "GH"),
    "pr": ("https://github.com/NCAR/geocat-applications/pull/%s", "PR"),
}

# napoleon settings
napoleon_use_admonition_for_examples = True
napoleon_include_special_with_doc = True
napoleon_google_docstring = False
napoleon_numpy_docstring = True
napoleon_use_param = False
napoleon_use_rtype = False
napoleon_preprocess_types = True
napoleon_type_aliases = {
    # general terms
    "sequence": ":term:`sequence`",
    "iterable": ":term:`iterable`",
    "callable": ":py:func:`callable`",
    "array": ":term:`array`",
    "dict_like": ":term:`dict-like <mapping>`",
    "dict-like": ":term:`dict-like <mapping>`",
    "path-like": ":term:`path-like <path-like object>`",
    "mapping": ":term:`mapping`",
    "file-like": ":term:`file-like <file-like object>`",
    "int": ":class:`int`",
    "float": ":class:`float`",
    "str": "str",
    "bool": ":class:`bool`",
    "tuple": ":class:`tuple`",
    "list": ":class:`list`",
    "dict": ":class:`dict`",
    "set": ":class:`set`",
    # numpy terms
    "array_like": ":term:`array_like`",
    "array-like": ":term:`array-like <array_like>`",
    "ndarray": "numpy.ndarray",
    "numpy.nan": "~numpy.nan",
    "np.nan": "~numpy.nan",
}

autosummary_generate = True

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
# source_suffix = ['.rst', '.md']
source_suffix = {
    '.rst': 'restructuredtext',
    '.ipynb': 'myst-nb',
    '.myst': 'myst-nb',
    '.md': 'myst-nb',
}

# The encoding of source files.
# source_encoding = 'utf-8-sig'

# The master toctree document.
master_doc = 'index'

# General information about the project.
project = 'GeoCAT-applications'

import datetime

current_year = datetime.datetime.now().year
copyright = '{}, University Corporation for Atmospheric Research'.format(current_year)
author = 'GeoCAT'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = "en"

# There are two options for replacing |today|: either, you set today to some
# non-false value, then it is used:
# today = ''
# Else, today_fmt is used as the format for a strftime call.
# today_fmt = '%B %d, %Y'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = [
    'README.md',
    '_build',
    '.DS_Store',
    'ipynb_checkpoints',
    '.github',
    'ci',
    'LICENSE.md',
    'templates/*',
]

# The reST default role (used for this markup: `text`) to use for all
# documents.
# default_role = None

# If true, '()' will be appended to :func: etc. cross-reference text.
# add_function_parentheses = True

# If true, the current module name will be prepended to all description
# unit titles (such as .. function::).
# add_module_names = True

# If true, sectionauthor and moduleauthor directives will be shown in the
# output. They are ignored by default.
# show_authors = False

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'
# from pygments.styles import get_all_styles
# styles = list(get_all_styles())
# print(f'STYLES: {styles}')

# A list of ignored prefixes for module index sorting.
# modindex_common_prefix = []

# If true, keep warnings as "system message" paragraphs in the built documents.
# keep_warnings = False

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = False

# -- Options for HTML output ----------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.

html_theme = "sphinx_book_theme"
html_title = ""

autosummary_imported_members = True

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
html_theme_options = {
    "repository_url": "https://github.com/NCAR/geocat-applications",
    "repository_branch": "main",
    "path_to_docs": "docs",
    "use_edit_page_button": True,
    "use_repository_button": True,
    "use_issues_button": True,
    "home_page_in_toc": False,
    "analytics": {
        "google_analytics_id": "G-EQMBXF1D2V",
    },
    "logo": {
        "image_light": '_static/images/logos/NSF_NCAR_light.svg',
        "image_dark": '_static/images/logos/NSF_NCAR_dark.svg',
    },
    "extra_footer": "<em>This material is based upon work supported by the NSF National Center for Atmospheric Research, a major facility sponsored by the U.S. National Science Foundation and managed by the University Corporation for Atmospheric Research. Any opinions, findings and conclusions or recommendations expressed in this material do not necessarily reflect the views of the U.S. National Science Foundation.</em>",
}

# Add any paths that contain custom themes here, relative to this directory.
# html_theme_path = []


# A shorter title for the navigation bar.  Default is the same as html_title.
# html_short_title = None

# The name of an image file (relative to this directory) to use as a favicon of
# the docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
html_favicon = '_static/images/logos/GeoCAT_square.svg'

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']
html_css_files = ["style.css"]

# Add any extra paths that contain custom files (such as robots.txt or
# .htaccess) here, relative to this directory. These files are copied
# directly to the root of the documentation.
# html_extra_path = []

# If not None, a 'Last updated on:' timestamp is inserted at every page
# bottom, using the given strftime format.
# The empty string is equivalent to '%b %d, %Y'.
# html_last_updated_fmt = None

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
# html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
# html_sidebars = {}

# Additional templates that should be rendered to pages, maps page names to
# template names.
# html_additional_pages = {}

# If false, no module index is generated.
# html_domain_indices = True

# If false, no index is generated.
# html_use_index = True

# If true, the index is split into individual pages for each letter.
# html_split_index = False

# If true, links to the reST sources are added to the pages.
# html_show_sourcelink = True

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
# html_show_sphinx = True

# If true, "(C) Copyright ..." is shown in the HTML footer. Default is True.
# html_show_copyright = True

# If true, an OpenSearch description file will be output, and all pages will
# contain a <link> tag referring to it.  The value of this option must be the
# base URL from which the finished HTML is served.
# html_use_opensearch = ''

# This is the file name suffix for HTML files (e.g. ".xhtml").
# html_file_suffix = None

# Language to be used for generating the HTML full-text search index.
# Sphinx supports the following languages:
#   'da', 'de', 'en', 'es', 'fi', 'fr', 'hu', 'it', 'ja'
#   'nl', 'no', 'pt', 'ro', 'ru', 'sv', 'tr', 'zh'
# html_search_language = 'en'

# A dictionary with options for the search language support, empty by default.
# 'ja' uses this config value.
# 'zh' user can custom change `jieba` dictionary path.
# html_search_options = {'type': 'default'}

# The name of a javascript file (relative to the configuration directory) that
# implements a search results scorer. If empty, the default will be used.
# html_search_scorer = 'scorer.js'

# Output file base name for HTML help builder.
htmlhelp_basename = 'geocat-applications-docs'

autodoc_typehints = 'none'


# custom scripts for making a gallery of examples notebooks
# # note: this method only supports a single gallery
# def update_gallery(app: Sphinx):
#     """Update the gallery of examples notebooks."""

#     LOGGER.info("creating gallery...")

#     notebooks = yaml.safe_load(
#         pathlib.Path(app.srcdir, "gallery.yml").read_bytes())

#     items = [
#         f"""
#          .. grid-item-card::
#             :text-align: center
#             :link: {item['path']}

#             .. image:: {item['thumbnail']}
#                 :alt: {item['title']}
#             +++
#             {item['title']}
#             """ for item in notebooks
#     ]

#     items_md = indent(dedent("\n".join(items)), prefix="    ")
#     markdown = f"""
# .. grid:: 1 2 3 3
#     :gutter: 2

#     {items_md}
#     """

#     pathlib.Path(app.srcdir, "notebook-examples.txt").write_text(markdown)

#     LOGGER.info("gallery created")


# turn off notebook execution
# set to "auto" for default behavior
nb_execution_mode = 'force'

nb_execution_excludepatterns = ['templates/*']

# generate warning for all invalid links
# nitpicky = True

# turn off anchor checks for speed and to get around github's line number anchor issues
linkcheck_anchors = False

# ignore some links that work, but are disliked by linkcheck
# Temporary removed while Code of Conduct is updated: https://doi.org/10.5065/6w2c-a132 -> https://www.ucar.edu/who-we-are/ethics-integrity/codes-conduct/contributors
linkcheck_ignore = [
    r'https://doi.org/10.1080/104732299303296',
    r'https://www.mathworks.com/help/matlab/ref/double.sign.html',
    r'https://doi.org/10.5065/6w2c-a132',
]
