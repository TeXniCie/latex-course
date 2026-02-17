First of all:

-Run thesis.tex as given. MikTeX or TeXLife will install some packages you didn't have yet, and you can also check that there were no errors before you changed anything. If there are errors, try again; if there are still errors, contact us right away.

-Our template is made for English, since we are assuming your thesis will be in English. If you do use Dutch or another language, DO NOT FORGET to change LaTeX's language to said language. You will probably recognise the 'babel' package; it is your safe choice for foreign languages.



%%Before writing%%

thesis.tex :

-See how the main file calls the other files; thesis.tex itself is essentially empty.

-Note the locations of \frontmatter \mainmatter \appendix \backmatter.



preamble.tex :

-Change author, title, maybe date. These are all for the properties of the PDF, not for the titlepage.

-Read through the first usepackage-list, and comment/uncomment which you want to use.

-Scan through the theorems, short-commands, parindent and BibLaTeX. If you want to change one of those later, you want to know where they are. In the BibLaTeX part you can change your reference style.



titlepage.tex :

-Change your name, the name of your superviser, the faculty, bachelor, etc. Remove the flag of the IBA and the A-es2 logo, unless you want to keep it. Basically, personalise everything.

-You shouldn't know your title yet, so either keep 'Your title' or use a temporary title.


subfile1.tex :

-Read it, make sure you understand. It's very much like an article, except for the documentclass.



appendixAB.tex :

-Also see that this is just as usual. The change in numbering is caused by \appendix in thesis.tex. 



bibfile.bib: 

-Make a copy; keep it as a backup or source. The majority of possible biblatex-references are in the file, so when you add a new reference, you can copy-paste it from the file.

-Clear out the file you'll be using, maybe add your main source right away.



%%When you're done%%

titlepage.tex: Change the title and date, maybe add a picture or logo. An example is given in 'voorbladBob.png'.

abstract.tex: Replace the placeholder with your abstract.
