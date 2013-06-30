#!/bin/bash

alias g="gvim -p"
alias sudo="sudo "

function gvim ()
{
   (/usr/bin/gvim -f "$@" &)
}
