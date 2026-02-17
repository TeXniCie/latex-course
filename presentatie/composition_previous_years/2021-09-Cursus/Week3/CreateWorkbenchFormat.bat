pdftex -ini -jobname="workbench" "&pdflatex" mylatexformat.ltx workbench.tex
move workbench.fmt auxdir/workbench.fmt
move workbench.log auxdir/workbenchFmt.log
del workbench.pdf
PAUSE
