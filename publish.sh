#!/bin/bash

# Exit if any command fails
set -e

# Build the MkDocs site
echo "Building MkDocs site..."
mkdocs build

# Stash changes in main in case there are local uncommitted changes
git stash push -m "Stash changes before gh-pages update"

# Check out to gh-pages branch
git checkout gh-pages

# Pull latest changes
git pull origin gh-pages

# Remove old site content except .git directory
find . -maxdepth 1 ! -name '.git' ! -name '.' ! -name '..' -exec rm -rf {} \;

# Copy new site content to the root
cp -r site/* .

# Clean up the site directory
rm -rf site

# Add all files to git
git add .

# Commit changes
git commit -m "Update site"

# Push changes
git push origin gh-pages

# Return to the main branch
git checkout main

# Pop the stash
git stash pop

echo "Site published successfully."
