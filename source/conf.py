# Configuration file for the Sphinx documentation builder.

# -- Project information -----------------------------------------------------

project = "AURA Data Aggregation Guide"
copyright = "2026, EEA AQ Team"
author = "EEA AQ Team"
release = "0.1"

# -- General configuration ---------------------------------------------------

extensions = [
    "myst_parser",
    "sphinx_design",
]

templates_path = ["_templates"]
exclude_patterns = []

myst_enable_extensions = ["dollarmath", "amsmath", "colon_fence"]


# -- HTML output -------------------------------------------------------------

html_theme = "sphinx_rtd_theme"

html_theme_options = {
    "collapse_navigation": True,
    "sticky_navigation": True,
    "navigation_depth": 4,
    "includehidden": True,
    "titles_only": False,
}

html_static_path = ["_static"]
html_favicon = "_static/favicon.png"

html_css_files = [
    "custom.css",
]

# Expandable in-page subsection navigation (QA-23).
html_js_files = ["aura-sidebar.js"]
