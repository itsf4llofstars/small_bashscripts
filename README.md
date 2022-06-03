# Small and Simple Bash Scripts

A collection of bash scripts to automate tasks<br>

+ check-path.sh
+ chmod.sh


### check-path.sh

The check-path.sh script should be copied to your path diretory. Or one can set<br>
a hard link or symbolic link from your path directory to the script in which<br>
ever directory the script is in.<br>

Create a symbolic link from within your path directory, by cd into your path<br>
directory:

> $ cp -s ~/path_to_script/check-path.sh ./link-name

link-name can be alias like, ex. chkpth

Then calling the script with:

> $ ./check-path.sh

or

> $ link-name

Should result in a successful run. Be sure to test it from outside of your<br>
path directory.<br>

Run with -h or --help for a short help section.<br>

### chmod.sh

chmod.sh is currently in work.<br>

