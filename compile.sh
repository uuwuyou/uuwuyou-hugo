hugo --theme=hyde --baseUrl="https://uuwuyou.github.io/" --buildDrafts
mv .git .gitbak
mv public/.gitbak .git
cd public
git remote remove origin
git remote add origin https://github.com/uuwuyou/uuwuyou.github.io.git
git pull origin master --allow-unrelated-histories
git add -A
git commit -am "post a new article"
git push origin master
mv .git .gitbak
cd ..
mv .gitbak .git
