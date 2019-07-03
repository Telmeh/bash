#!/bin/bash

# Script to append some functions to bash.bashrc

# Functions cx() and lx()

cx() {
	cd $@
	echo $PWD
	ls
}

# let's focus on this one function for now

IFS='' read -r -d '' String <<"EOF"
cx() {
        cd $@
        echo $PWD
        ls
}
EOF

cat >> myfile.txt <<"EOF"
cx() {
        cd $@
        echo $PWD
        ls
}
# new line
EOF
