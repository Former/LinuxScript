#!/bin/bash

#  
pdfjam  --preamble '\usepackage{fancyhdr} \pagestyle{fancy} \topmargin -65pt \oddsidemargin 150pt \rfoot{} \cfoot{} \rhead{} \chead{\Large\thepage} \renewcommand {\headrulewidth}{0pt} \renewcommand {\footrulewidth}{0pt} '  --pagecommand '\thispagestyle{fancy}' -o "pagenum_$1" "$1"
