#!/bin/bash

# Define the base directory for documentation
base_dir="./docs"

# List of directories and files
dirs_and_files=(
    "introduction/project-overview.md"
    "introduction/idea-and-vision.md"
    "getting-started/prerequisites.md"
    "getting-started/installation-and-setup.md"
    "getting-started/quick-start-guide.md"
    "architecture/system-architecture.md"
    "architecture/contract-design.md"
    "usage/user-guide.md"
    "usage/api-reference.md"
    "development/setup-and-tooling.md"
    "development/contribution-guidelines.md"
    "examples-and-tutorials/walkthroughs.md"
    "examples-and-tutorials/code-examples.md"
    "advanced-topics/extending-the-factory-contract.md"
    "advanced-topics/security-considerations.md"
    "faqs.md"
    "resources/glossary.md"
    "resources/further-reading.md"
    "about/the-team.md"
    "about/contact-and-support.md"
    "changelog.md"
)

# Loop through each directory and file to create them
for path in "${dirs_and_files[@]}"; do
  full_path="$base_dir/$path" # Construct full path
  mkdir -p "$(dirname "$full_path")" # Create directory
  touch "$full_path" # Create file
done

echo "Directories and files created successfully."
