all:
	make doc/PhD_thesis/PhD_Thesis.pdf
	make doc/PhD_thesis/PhD_Appendix_A_papers.pdf
	make doc/PhD_thesis/PhD_Appendix_B_GOA_TOOLS.pdf
	make doc/PhD_thesis/PhD_Vita.pdf
	make doc/PhD_thesis/goatools_stargazers_dvk.pdf
	make doc/PhD_thesis/goatools_stargazers_dvk.png
	find doc/PhD_thesis
	git status

doc/PhD_thesis/PhD_Thesis.pdf: $(DL)/PhD_Thesis.pdf
	cp -f $< $@

doc/PhD_thesis/PhD_Appendix_A_papers.pdf: doc/PhD_thesis/PhD_Thesis.pdf
	pdftools copy -o $@ -p 288-290 -y $<

doc/PhD_thesis/PhD_Appendix_B_GOA_TOOLS.pdf: doc/PhD_thesis/PhD_Thesis.pdf
	pdftools copy -o $@ -p 291-298 -y $<

doc/PhD_thesis/PhD_Vita.pdf: doc/PhD_thesis/PhD_Thesis.pdf
	pdftools copy -o $@ -p 299 -y $<

doc/PhD_thesis/goatools_stargazers_dvk.pdf: $(GIT)/proj_dis_clu/log/github_stars/goatools_stargazers_dvk.pdf
	cp -f $< $@

doc/PhD_thesis/goatools_stargazers_dvk.png: $(GIT)/proj_dis_clu/log/github_stars/goatools_stargazers_dvk.png
	cp -f $< $@
