#!/bin/bash

set -e 

echo "Building VitePress site..."
npm run docs:build || { echo "Build failed!"; exit 1; }

if [ -z "$(ls -A .vitepress/dist/)" ]; then
    echo "Build folder is empty! Deployment aborted."
    exit 1
fi

if ! git diff --quiet; then
    echo "Stashing uncommitted changes..."
    git stash
fi

echo "Switching to gh-pages branch..."
git checkout gh-pages || { echo "Failed to switch to gh-pages!"; exit 1; }

if [ -n "$(git ls-files)" ]; then
    echo "Cleaning old files..."
    git rm -rf . || { echo "Failed to remove old files!"; exit 1; }
else
    echo "No files to remove. Skipping cleanup."
fi

echo "Copying new build files..."
cp -r .vitepress/dist/* . || { echo "Failed to copy build files!"; exit 1; }

if [ -z "$(ls -A .vitepress/dist/)" ]; then
    echo "Build folder is empty! Deployment aborted."
    exit 1
fi

echo "Deploying to GitHub Pages..."
git add .
git commit -m "deploy updated documentation" || echo "No changes to commit."
git push origin gh-pages || { echo "Push failed!"; exit 1; }

echo "Switching back to main branch..."
git checkout main || { echo "Failed to switch back to main!"; exit 1; }

if git stash list | grep -q "stash@{0}"; then
    echo "Restoring stashed changes..."
    git stash pop
fi

echo "Deployment complete!"

