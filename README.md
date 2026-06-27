# QKDecode — BB84 Quantum Key Distribution

## Layout

```
.
├── src/            # core protocol implementation
│   ├── bb84.py     # bb84 protocol
│   └── channel.py  # noisy quantum channel model
├── exp/            # experiments and analysis
│   └── simulation.py
├── paper/          # final report (LaTeX)
│   ├── main.tex
│   └── references.bib
├── Makefile
└── requirements.txt
```

## Quickstart

```bash
make install     # install Python dependencies
make run         # run the experiment driver
make paper       # build paper/main.pdf
```
