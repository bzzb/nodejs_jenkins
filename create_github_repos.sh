#!bin/bash
curl -u 'YOUR_GITHUB_USER_NAME' https://api.github.com/user/repos -d "{\"name\":\"$1\"}";
touch README.md

git init;
git commit -m "first commit"
git remote add origin git@github.com:YOUR_GITHUB_USER_NAME/$1.git;
#git remote add origin git@github.com:bzzb/<reponame>.git
git push -u origin master

