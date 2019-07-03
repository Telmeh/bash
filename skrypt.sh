#!/bin/bash

# Script to append some functions to bash.bashrc

# Functions cx() and lx()

#cx() {
#	cd $@
#	echo $PWD
#	ls
#}

# let's focus on this one function for now

#IFS='' read -r -d '' String <<"EOF"
#cx() {
#        cd $@
#        echo $PWD
#        ls
#}
#EOF
#
#if [ 1 ]
#then
#	echo yo
#fi
#temp=$(grep -q cx $HOME/.bashrc) # to egzekutuje.. # wykonuje funkcje 1
# ech, chyba chuj z nimi. Uzyje na razie '&&'.
#echo $temp
#if [ $temp ]
#then
grep -q cx $HOME/.bashrc &> /dev/null || \
cat >> $HOME/.bashrc <<"EOF"
cx() {
        cd $@
        echo $PWD
        ls
}
# new line
EOF
#fi

grep -q lx $HOME/.bashrc &> /dev/null || \
cat >> $HOME/.bashrc <<"EOF"
lx() {
	echo $PWD
	ls
}
EOF
