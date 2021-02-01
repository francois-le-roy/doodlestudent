set -e
git config --global push.default simple
git remote add production ssh://zprojet@148.60.11.226/home/doodlestudent
git push production master
