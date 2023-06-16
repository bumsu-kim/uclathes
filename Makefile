
#
# uclathes Makefile
# Copyright (C) 1995 by John Heidemann, <johnh@isi.edu>
#

FILES=README \
	Kim.tex Kim.dvi Kim.pdf \
	uclathes.cls uclath12.clo uclathti.clo uclathma.clo \
	sn-mathphys.bst uclathes.bst Makefile

all:  latex ps pdf

tar: $(FILES)
	tar cvf uclathes.tar $(FILES)

tar.gz:
	@echo "Make all before doing make tar.gz"
	tar czvf uclathes.tar.gz $(FILES)

DVIPS=dvips
PS2PDF=ps2pdf14

latex latex.Kim::
	latex Kim

ps Kim.ps::
	$(DVIPS) Kim

pdf Kim.pdf::
	$(PS2PDF) Kim.ps Kim.pdf

clean:
	rm *.aux *.toc *.lot *.lof *.dvi *.log *.ps
