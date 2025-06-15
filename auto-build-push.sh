#!/bin/bash

echo "Running SUSHI build..."
sushi .

echo "Checking for git changes..."
if [ -n "$(git status --porcelain)" ]; then
  echo "Changes detected, committing and pushing..."
  git add .
  git commit -m "Auto build & push: $(date)"
  git push origin main
else
  echo "No changes to commit."
fi

echo "Done."
