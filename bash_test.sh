#!/bin/bash

# Step 1: Add unstaged tracked files
git add --all

# Step 2: Show status
git status -uno

# Step 3: Ask for confirmation
read -p "Do you want to continue with commit? (y/n): " confirm

if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Aborted."
    exit 0
fi

# Step 4: Ask for commit message
read -p "Enter commit message: " msg

# Step 5: Commit and push
git commit -m "$msg"
git push origin HEAD

echo "Changes committed and pushed to origin."
