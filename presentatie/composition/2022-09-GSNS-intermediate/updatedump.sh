#!/bin/sh


pdftex -shell-escape -ini -jobname="tekstopmaak" "&pdflatex"  mylatexformat.ltx 2_Tekstopmaak.tex
mv tekstopmaak.fmt auxdir/tekstopmaak.fmt
mv tekstopmaak.log auxdir/tekstopmaakFmt.log

pdftex -shell-escape -ini -jobname="formules" "&pdflatex" mylatexformat.ltx 5_Formules.tex
mv formules.fmt auxdir/formules.fmt
mv formules.log auxdir/formulesFmt.log
