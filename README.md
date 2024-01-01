# Python Boilerplate Generator

## Overview

Python Boilerplate Generator is a command-line utility that simplifies the process of creating Python project templates with a standardized directory structure, configuration files, and common files like `README.md` and `.gitignore`. This tool is designed to save time and provide consistency when starting new Python projects.

## Features

- Generates Python project templates with a predefined directory structure.
- Includes common project files like `README.md`, `.gitignore`, `requirements.txt`, and more.
- Includes a `setup.py` for easy distribution.
- Generates a `.gitignore` file for Python projects.
- Optional creation of a virtual environment directory (`venv`).

## Usage
```bash
./create_project_structure.sh kml2gpx 
```

## Directory Structure
A generated project template will follow this directory structure:

```graphql
my_project/
├── my_project/
│   ├── __init__.py
│   ├── main.py
├── tests/
│   ├── __init__.py
│   ├── test_main.py
├── docs/
│   ├── README.md
├── LICENSE.txt
├── README.md
├── .gitignore
├── requirements.txt
└── venv/
```