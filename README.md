# bash_renamer
Little birthday present for Tim Lathouwers a bash script to replace all dirs + files with spaces into underscore

# USAGE
```
$ ./renamer.sh <directory>
```
This replaces all dirs + files with spaces into dirs+files with instead of space.



# Testing
Run the testsuite like so it copies the testingdir with various subdirectories with files and dirs with spaces
into testcase and then lets the replacer loose by doing ./replace.sh testcase
You can also just cd into a dir and then run ./replace.sh . (with . for current dir)

```
$ ./test.sh

original testcase directory tree
testcase
├── dir\ 1
│   └── file\ with\ spaces.txt
└── dir2
    ├── direct\ three
    │   └── file\ vierde.txt
    ├── gewonefile
    └── tweede\ file.txt

3 directories, 4 files
./renamer.sh testcase
found spaces in testcase/dir 1 renaming to testcase/dir_1... done
found spaces in testcase/dir_1/file with spaces.txt renaming to testcase/dir_1/file_with_spaces.txt... done
found spaces in testcase/dir2/direct three renaming to testcase/dir2/direct_three... done
found spaces in testcase/dir2/direct_three/file vierde.txt renaming to testcase/dir2/direct_three/file_vierde.txt... done
found spaces in testcase/dir2/tweede file.txt renaming to testcase/dir2/tweede_file.txt... done
after renamer has run testcase tree:
testcase
├── dir2
│   ├── direct_three
│   │   └── file_vierde.txt
│   ├── gewonefile
│   └── tweede_file.txt
└── dir_1
    └── file_with_spaces.txt

3 directories, 4 files

```

