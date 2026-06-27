PYTHON ?= python3
PAPER_DIR := paper
PAPER := $(PAPER_DIR)/main

.PHONY: all install run test paper clean

all: run paper

install:
	$(PYTHON) -m pip install -r requirements.txt

run:
	$(PYTHON) exp/simulation.py

test:
	$(PYTHON) -m pytest -q

paper: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex $(PAPER_DIR)/references.bib
	cd $(PAPER_DIR) && latexmk -pdf main.tex

clean:
	cd $(PAPER_DIR) && latexmk -C
	rm -rf results __pycache__ src/__pycache__ exp/__pycache__
