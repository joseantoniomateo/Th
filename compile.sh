#!/bin/bash
rm thesis.dvi
rm thesis.pdf
latex thesis.tex
dvipdfm thesis.dvi
evince thesis.pdf
clear