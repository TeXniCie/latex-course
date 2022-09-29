pdftex -ini -jobname="presentatie" "&pdflatex" mylatexformat.ltx presentatie.tex
rem move presentatie.fmt auxdir/presentatie.fmt
rem move presentatie.log auxdir/presentatieFmt.log
del presentatie.pdf

