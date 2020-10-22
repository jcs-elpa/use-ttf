@echo off

echo "Cloning `use-ttf` package..."

git clone https://github.com/jcs-elpa/use-ttf.git

cd "./use-ttf/"

echo "Install `use-ttf` package..."

emacs -nw --batch --load "./scripts/test-pkg.el"
