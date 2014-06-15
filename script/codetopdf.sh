#!/usr/bin/env bash
texname="code_print"
tex_file=${texname}".tex" ## Change this to whatever you want

cat<<EOF >$tex_file   ## Print the tex file header
\documentclass[twocolumn]{article}
%\documentclass{article}
\usepackage{listings}
\usepackage{url}
\usepackage[usenames,dvipsnames]{color}  %% Allow color names
\usepackage[landscape]{geometry}
\lstdefinestyle{customasm}{
  belowcaptionskip=1\baselineskip,
  %xleftmargin=\parindent,
  language=Matlab,   %% Change this to whatever you write in
  breaklines=true, %% Wrap long lines
  %basicstyle=\footnotesize\ttfamily,
  basicstyle=\ttfamily,
  commentstyle=\itshape\color{Gray},
  stringstyle=\color{Black},
  keywordstyle=\bfseries\color{OliveGreen},
  identifierstyle=\color{blue},
  %xleftmargin=-8em,
}        
\usepackage[colorlinks=true,linkcolor=blue]{hyperref} 
\geometry{tmargin=2cm, bmargin=3cm, lmargin=1cm, rmargin=1cm}

\author{Wittawat Jitkrittum}
\title{ }

\setlength{\columnseprule}{0.4pt}
\begin{document}

\maketitle

%\tableofcontents

EOF

find . -type f -iname "*.m" ! -regex ".*/\..*" ! -name ".*" ! -name "*~" |
sed 's/^\..//' |                 ## Change ./foo/bar.src to foo/bar.src

while read  i; do                ## Loop through each file

   #echo "\newpage" >> $tex_file   ## start each section on a new page
    echo "\subsection*{ \underline{\url{$i}} }" >> $tex_file  ## Create a section for each file

   ## This command will include the file in the PDF
    echo "\lstinputlisting[style=customasm]{$i}" >>$tex_file
done &&
echo "\end{document}" >> $tex_file &&
pdflatex $tex_file -output-directory . && 
pdflatex $tex_file -output-directory .  ## This needs to be run twice 
                                           ## for the TOC to be generated

# remove files
rm ${texname}.aux
rm ${texname}.log
rm ${texname}.out 

