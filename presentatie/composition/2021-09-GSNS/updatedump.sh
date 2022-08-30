pdftex -shell-escape -ini -jobname="tekstopmaak" "&pdflatex" mylatexformat.ltx 2_Tekstopmaak.tex
mkdir -p auxdir
mv tekstopmaak.fmt auxdir/tekstopmaak.fmt
mv tekstopmaak.log auxdir/tekstopmaakFmt.log

pdftex -shell-escape -ini -jobname="formules" "&pdflatex" mylatexformat.ltx 5_Formules.tex
mkdir -p auxdir
mv formules.fmt auxdir/formules.fmt
mv formules.log auxdir/formulesFmt.log
