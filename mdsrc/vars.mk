# vars.mk : define common variables
SHELL:=/bin/bash

# Slide neighbor handlers
MKNBOR=./mknbor.sh      # Creates .n file from .md file
NBORSUB=./mkhn.rb       # creates .hn file fron .n file
TMPLPROC:=erb  # Use Ruby ERb for template processing
MARKPROC:=redcarpet

