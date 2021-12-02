filename=main

pdf:
	xelatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	# xelatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	# xelatex -synctex=1 -interaction=nonstopmode ${filename}.tex

clean:
	find . -regextype posix-extended -regex '.*\.(ps|log|aux|out|nav|snm|vrb|dvi|bbl|blg|gz|toc|bcf|xml|tex.bbl|blg)$$' -exec rm {} \;
	$(RM) log.pdf*

# clean:
# 	rm -f ${filename}.{ps,pdf,log,aux,out,nav,snm,vrb,dvi,bbl,blg,synctex.gz,toc,bcf,run.xml,tex.bbl,tex.blg}
# 	rm -f ${filename}-blx.bib
