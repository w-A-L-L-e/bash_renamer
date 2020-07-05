rm -rf testcase
cp -r testingdir testcase

echo "original testcase directory tree"
tree testcase

echo "./renamer.sh testcase"
./renamer.sh testcase

echo "after renamer has run testcase tree:"
tree testcase
