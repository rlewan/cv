.PHONY: examples

CC = xelatex
SOURCES_DIR = src
RESUME_DIR = src/resume
CV_DIR = src/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(SOURCES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(SOURCES_DIR) $<

cv.pdf: $(SOURCES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(SOURCES_DIR) $<

coverletter.pdf: $(SOURCES_DIR)/coverletter.tex
	$(CC) -output-directory=$(SOURCES_DIR) $<

clean:
	rm -rf $(SOURCES_DIR)/*.pdf
	rm -rf $(SOURCES_DIR)/*.log
	rm -rf $(SOURCES_DIR)/*.aux
