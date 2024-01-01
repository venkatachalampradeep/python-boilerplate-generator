#!/bin/bash

# Check if a project name is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: ./setup_project.sh <project_name>"
  exit 1
fi

# Get the project name from the command-line argument
PROJECT_NAME="$1"
PROJECT_ROOT="${PROJECT_NAME}_root"

# Create the project root directory
mkdir -p "$PROJECT_ROOT"

# Create the main package directory
mkdir -p "$PROJECT_ROOT/$PROJECT_NAME"
touch "$PROJECT_ROOT/$PROJECT_NAME/__init__.py"

# Create the tests directory
mkdir -p "$PROJECT_ROOT/tests"

# Create the docs directory
mkdir -p "$PROJECT_ROOT/docs"

# Create the LICENSE.txt file (e.g., MIT License)
touch "$PROJECT_ROOT/LICENSE.txt"

# Create the README.md file
echo "# $PROJECT_NAME" >> "$PROJECT_ROOT/README.md"
echo "" >> "$PROJECT_ROOT/README.md"
echo "Project description goes here." >> "$PROJECT_ROOT/README.md"

# Create the requirements.txt file
touch "$PROJECT_ROOT/requirements.txt"

# Create the setup.py file
touch "$PROJECT_ROOT/setup.py"

# Create the .gitignore file
echo "# Byte-compiled / optimized / DLL files" >> "$PROJECT_ROOT/.gitignore"
echo "__pycache__/" >> "$PROJECT_ROOT/.gitignore"
echo "*.py[cod]" >> "$PROJECT_ROOT/.gitignore"
echo "*$PROJECT_NAME.egg-info/" >> "$PROJECT_ROOT/.gitignore"
echo "dist/" >> "$PROJECT_ROOT/.gitignore"
echo "build/" >> "$PROJECT_ROOT/.gitignore"

# Create the venv directory (optional)
mkdir -p "$PROJECT_ROOT/venv"

# Output project structure created message
echo "Project structure created in '$PROJECT_ROOT'."
