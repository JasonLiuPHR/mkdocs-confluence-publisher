#!/bin/bash

# This script is used to run the example mkdocs project against the current
# development version of the mkdocs-confluence-publisher plugin.

# Install the plugin in editable mode
pip install -e ..

# Run the mkdocs build
mkdocs build
