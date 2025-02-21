#!/bin/bash

echo "Building VitePress site..."
npm run build

echo "Switching to gh-pages branch..."
git checkout gh-pages

echo "Cleaning old files..."
git rm -rf .

echo "Copying new build files..."
cp -r .vitepress/dist/* .

echo "Deploying to GitHub Pages..."
git add .
git commit -m "Deploy updated documentation"
git push origin gh-pages

echo "Switching back to main branch..."
git checkout main

echo "Deployment complete!"

