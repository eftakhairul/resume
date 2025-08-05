SHELL := /bin/bash

.DEFAULT_GOAL:= help

.PHONY: help
help: Makefile
	@sed -n 's/^#~!//p' $^ | sort ;\


#~! all                 : Run everything to build the resume
.PHONY: all
all: resume

#~! resume              : Build the resume PDF
.PHONY: resume
resume:
	./dockerlatex.sh pdflatex resume.tex

#~! clean               : Clean up auxiliary files
.PHONY: clean
clean:
	rm -f resume.aux resume.log resume.out resume.pdf
