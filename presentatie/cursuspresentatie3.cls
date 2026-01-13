\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cursuspresentatie3}[2025/12/14 cursuspresentatie]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% - - - - - - - - - - - - - - - - - Class settings  - - - - - - - - - - - - - - - - - - - - - - - - %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{../../acrn}                   % Package needed for the everyoneauthor setting
\RequirePackage{etoolbox}               % Package needed for the booleans here
% Language Bool
\newbool{english}
\booltrue{english}
\DeclareOptionX{english}{
    \booltrue{english}
}
\makeatletter
\define@boolkey{cursuspresentatie}{everyoneauthor}[true]{
    \ifbool{KV@cursuspresentatie@everyoneauthor}{
        \acrnAllAuthorsTrue
    }{
        \acrnAllAuthorsFalse
    }
}

\define@boolkey{cursuspresentatie}{slidenames}[true]{}

\DeclareOptionX{allauthors}{
    \acrnAllAuthorsTrue
}
\makeatother

\ProcessOptionsX<cursuspresentatie>
\ProcessOptionsX

% aspectratio=169: aspectratio 16:9
% aspectratio=32: aspectratio 3:2
\LoadClass[aspectratio=169]{beamer}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% - - - - - - - - - - - - - - - - -  Packages - - - - - - - - - - - - - - - - - - - - - - - - - - - %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{../../acrn}                                       % For copyright (also imported at bools for allautors option)
\RequirePackage{import}                                     % For importing files from other folders (i.e. slides)
\RequirePackage{subfiles}                                   % Allows for compiling subfiles independantly
\RequirePackage{etoolbox}                                   % Advanced programming tools (also imported at bools for boolean logic)

\RequirePackage[T1]{fontenc}                                % Proper output font encoding
\RequirePackage{lmodern}                                    % Latin modern font (other version of computer modern)
\RequirePackage{textcomp}                                   % Extra text symbols

\RequirePackage{amsmath,amssymb,amsthm,commath,mathtools}   % Mathematics symbols and functionality
\RequirePackage{esint}                                      % Extra symbols for integrals

\RequirePackage{subcaption}                                 % Subfigures and subtables can get individual captions
\RequirePackage{graphicx}                                   % For Images
\RequirePackage[shortlabels]{enumitem}                      % For lists
\RequirePackage{tabularx}                                   % For tables, automatically stretching columns
\RequirePackage{pbox}                                       % Add line breaks in table

\PassOptionsToPackage{usenames,dvipsnames}{xcolor}          % Enables predefined color names
\RequirePackage{xcolor}                                     % Color support
\RequirePackage{adjustbox}                                  % More control over placement of content

\RequirePackage{ragged2e}                                   % Improves ragged text

\RequirePackage{multicol}                                   % For multiple columns

\RequirePackage{marvosym}                                   % Symbols
\RequirePackage{fancyvrb}                                   % Better verbatim environments
\RequirePackage{minted}                                     % For literal text with highlighting for LaTeX 
\usemintedstyle{pastie}

\RequirePackage[style=numeric]{biblatex}                    % For bibliography  
\RequirePackage{csquotes}                                   % For quotation marks

\RequirePackage{hyperref}                                   % For references 
% We should probably change cleveref as it is not supported by the beamer class. 
\RequirePackage{cleveref}                                   % For references with automatic names

\ifbool{english}{                                           % Language options
    \RequirePackage[english]{babel}
}{
    \RequirePackage[dutch]{babel}
}

% Old packages 
%\RequirePackage{textgreek}                                  % Greek letters in textmode
%\RequirePackage{yfonts}                                     % German letters
%\RequirePackage[version=4]{mhchem}                          % Chemistry symbols
%\RequirePackage{booktabs}                                   % Adds table rules
%\RequirePackage{soul}                                       % Letter spacing, underlining, highlighting
%\RequirePackage{environ}                                    % Allows for defining new environments 
%\RequirePackage[utf8]{inputenc}                             % UTF-8 input (legacy)
%\RequirePackage{xkeyval}                                    % Maybe used in other packages, key-value option handling

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% - - - - - - - - - - - - - - - - -  Copyright - - - - - - - - - - - - - - - - - - - - - - - - - %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Old TeXniCie
\acrnDefName\copyrightThomas{Thomas van Maaren}{2022--2024}
\acrnDefName\copyrightHanneke{Hanneke Schroten}{2022--2024}
\acrnDefName\copyrightTim{Tim Weijers}{2022--2024}
\acrnDefName\copyrightVincent{Vincent Kuhlmann}{2021--2024}
\acrnDefName\copyrightJesse{Jesse Straat}{2024--2024}

% Current TeXniCie
\acrnDefName\copyrightHylke{Hylke Hoogeveen}{2025--2026}
\acrnDefName\copyrightJagna{Jagna Hendriks}{2025--2026}
\acrnDefName\copyrightYoram{Yoram Veltmaat}{2025--2026}
\acrnDefName\copyrightIvo{Ivo Huisman}{2025--2026}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% - - - - - - - - - - - - - - - - - Beamer class settings - - - - - - - - - - - - - - - - - - - - - %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usetheme{Dresden}
\useoutertheme{miniframes}
\mode<presentation>
\definecolor{themegreen}{RGB}{32, 131, 32}
\def\themeGreen{
    \setbeamercolor*{structure}{fg=themegreen,bg=themegreen}

    \setbeamercolor*{palette primary}{use=structure,fg=black,bg=structure.bg!40!green}
    \setbeamercolor*{palette secondary}{use=structure,fg=white,bg=structure.bg!60!green}
    \setbeamercolor*{palette tertiary}{use=structure,fg=white,bg=structure.bg!90!green}
    \setbeamercolor*{palette quaternary}{fg=white,bg=black}

    \setbeamercolor*{sidebar}{use=structure,bg=structure.fg}
    
    \setbeamercolor*{palette sidebar primary}{use=structure,fg=structure.bg!10}
    \setbeamercolor*{palette sidebar secondary}{fg=white}
    \setbeamercolor*{palette sidebar tertiary}{use=structure,fg=structure.bg!50}
    \setbeamercolor*{palette sidebar quaternary}{fg=white}

    \setbeamercolor*{titlelike}{use=structure,fg=structure.fg}

    \setbeamercolor*{separation line}{}
    \setbeamercolor*{fine separation line}{}

    \colorlet{navigationTileOutline}{themegreen!40!green}
    \colorlet{exerciseTileOutline}{themegreen!20!green}
    \colorlet{exerciseTileBackground}{themegreen!80!green}

    \colorlet{underlineColor}{blue}
    \colorlet{navigationUnderlineColor}{yellow!80!blue}
}
\themeGreen
\mode
<all>

% Removes beamer navigation symbols
\setbeamertemplate{navigation symbols}{}

\setbeamertemplate{headline}
{%
    \begin{beamercolorbox}[colsep=1.5pt]{upper separation line head}%
    \end{beamercolorbox}
    \begin{beamercolorbox}{section in head/foot}
        \vskip2pt
        \insertnavigation{\paperwidth}%
        %\strut %AAAA
        \vskip4pt
    \end{beamercolorbox}%
    \begin{beamercolorbox}[colsep=1.5pt]{lower separation line head}%
    \end{beamercolorbox}%
}

\setbeamertemplate{footline}
{%
    \begin{beamercolorbox}[colsep=1.5pt]{upper separation line foot}
    \end{beamercolorbox}
    %
    \begin{beamercolorbox}[
        ht=2.5ex,dp=1.125ex,%
        leftskip=.3cm,rightskip=.3cm plus1fil
    ]{author in head/foot}%
        \leavevmode{\usebeamerfont{author in head/foot}%
            \rlap{\insertshortauthor}%
            %\hfill Slides op texnicie.nl%
        }%
        \hfill%
        {\usebeamerfont{institute in head/foot}\usebeamercolor[fg]{institute in head/foot}\insertshortinstitute}%
    \end{beamercolorbox}%
    %
    \begin{beamercolorbox}[
        ht=2.5ex,dp=1.125ex,%
        leftskip=.3cm,rightskip=.3cm plus1fil
    ]{title in head/foot}%
        {\usebeamerfont{title in head/foot}\rlap{\insertshorttitle}}
        \hfill
        %Slides op texnicie.nl
        % \hfill{\usebeamercolor[fg]{page number in head/foot}\usebeamerfont{page number in head/foot}\llap{\usebeamertemplate{page number in head/foot}}}%
        \thepage
    \end{beamercolorbox}%
    %
    \begin{beamercolorbox}[colsep=1.5pt]{lower separation line foot}
    \end{beamercolorbox}
}

\setbeamertemplate{mini frame}{}
\setbeamertemplate{mini frame in current subsection}{}
\setbeamertemplate{mini frame in other subsection}{}

\def\customhead#1#2{%
    \ifnum\value{section}=#1\relax
        \textcolor{fg!100!bg}{%
            \setul{1pt}{0.5pt}\setulcolor{navigationUnderlineColor}\ul{#2}%
        }%
    \else
        #2%
    \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% - - - - - - - - - - - - - - - - -  Commands - - - - - - - - - - - - - - - - - - - - - - - - - - - %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\importslide#1#2{
    \IfFileExists{../../slides/\defaultSlideCollection/#1/#2}{%
        \def\currSlideImportName{\defaultSlideCollection/#1/#2}%
        \import{../../slides/\defaultSlideCollection/#1}{#2}%
        \let\currSlideImportName\relax
    }{
        \def\currSlideImportName{#1/#2}%
        \import{../../slides/#1}{#2}%
        \let\currSlideImportName\relax
    }
}