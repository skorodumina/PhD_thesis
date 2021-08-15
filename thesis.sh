#!/bin/tcsh -f
rm thesis.pdf
rm thesis.aux
rm thesis.bbl
rm text/aliases/*.aux text/conclusions/*.aux text/event_selection/*.aux text/motivation/*.aux text/setups/*.aux text/title_page/*.aux text/toc/*.aux text/appendix/*.aux text/rad_corr/rad_corr.aux text/sys_err/*.aux text/bin_corr/*.aux text/cross_sction/*.aux
pdflatex thesis
bibtex thesis
pdflatex thesis
pdflatex thesis
acroread thesis.pdf >& /dev/null
rm thesis.log thesis.aux thesis.toc thesis.out thesis.blg thesis.bbl
