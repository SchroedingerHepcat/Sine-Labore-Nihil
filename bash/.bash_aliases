#!/bin/bash

alias g="gvim -p"
alias sudo="sudo "

function gvim ()
{
   (/usr/bin/gvim -f "$@" &)
}

function have ()
{
   unset -v have
   PATH=$PATH:/sbin:/usr/sbin/:/usr/local/sbin type $1 &>/dev/null &&
   have="yes"
}

