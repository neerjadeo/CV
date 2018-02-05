.PHONY: examples

CC = xelatex
RESUME_DIR = resume
CV_DIR = cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) $<

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) $<

coverletter.pdf: coverletter.tex
	$(CC) $<

clean:
	rm -rf *.pdf
