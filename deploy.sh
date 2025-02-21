#!/bin/bash

set -e  # 오류 발생 시 즉시 종료

echo "Building VitePress site..."
npm run docs:build || { echo "Build failed!"; exit 1; }

# 빌드된 파일을 임시 디렉토리에 저장
echo "Storing built files temporarily..."
mkdir -p temp_dist
cp -r .vitepress/dist/* temp_dist/ || { echo "Failed to copy built files!"; exit 1; }

# 빌드된 파일이 존재하는지 확인
if [ -z "$(ls -A temp_dist/)" ]; then
    echo "Build folder is empty! Deployment aborted."
    exit 1
fi

# 변경 사항이 있으면 stash로 저장
if ! git diff --quiet; then
    echo "Stashing uncommitted changes..."
    git stash
fi

echo "Switching to gh-pages branch..."
git checkout gh-pages || { echo "Failed to switch to gh-pages!"; exit 1; }

# 현재 브랜치에 파일이 존재하는 경우 삭제
if [ -n "$(git ls-files)" ]; then
    echo "Cleaning old files..."
    git rm -rf . || { echo "Failed to remove old files!"; exit 1; }
else
    echo "No files to remove. Skipping cleanup."
fi

# 임시 디렉토리에서 파일 복사
echo "Copying new build files..."
cp -r temp_dist/* . || { echo "Failed to copy build files!"; exit 1; }
rm -rf temp_dist  # 임시 디렉토리 삭제

echo "Deploying to GitHub Pages..."
git add .
git commit -m "Deploy updated documentation" || echo "No changes to commit."
git push origin gh-pages || { echo "Push failed!"; exit 1; }

# 다시 main 브랜치로 복귀
echo "Switching back to main branch..."
git checkout main || { echo "Failed to switch back to main!"; exit 1; }

# 저장했던 변경 사항 복원
if git stash list | grep -q "stash@{0}"; then
    echo "Restoring stashed changes..."
    git stash pop
fi

echo "Deployment complete!"

