.PHONY: all

CC = xelatex --halt-on-error
SOURCES_DIR = src
OUTPUTS_DIR = out
RESUME_DIR = src/resume
CV_DIR = src/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

all: $(foreach x, coverletter cv resume, $x.pdf)

out:
	mkdir -p $(OUTPUTS_DIR)

resume.pdf: $(SOURCES_DIR)/resume.tex $(RESUME_SRCS) out
	$(CC) -output-directory=$(SOURCES_DIR) $<
	mv $(SOURCES_DIR)/*.aux $(SOURCES_DIR)/*.log $(SOURCES_DIR)/*.pdf $(OUTPUTS_DIR)

cv.pdf: $(SOURCES_DIR)/cv.tex $(CV_SRCS) out
	$(CC) -output-directory=$(SOURCES_DIR)/ $<
	mv $(SOURCES_DIR)/*.aux $(SOURCES_DIR)/*.log $(SOURCES_DIR)/*.pdf $(OUTPUTS_DIR)

coverletter.pdf: $(SOURCES_DIR)/coverletter.tex out
	$(CC) -output-directory=$(SOURCES_DIR)/ $<
	mv $(SOURCES_DIR)/*.aux $(SOURCES_DIR)/*.log $(SOURCES_DIR)/*.pdf $(OUTPUTS_DIR)

clean:
	rm -f $(SOURCES_DIR)/*.pdf
	rm -f $(SOURCES_DIR)/*.log
	rm -f $(SOURCES_DIR)/*.aux
	rm -rf $(OUTPUTS_DIR)
