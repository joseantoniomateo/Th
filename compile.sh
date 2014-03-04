#!/bin/bash
rm thesis.dvi
rm thesis.pdf
rm thesis.ps
rm thesis.aux
latex thesis.tex
latex thesis.tex
#dvipdfm thesis.dvi
dvips thesis.dvi
ps2pdf thesis.ps
evince thesis.pdf
clear