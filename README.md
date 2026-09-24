# lean-confinement

Lean formalization of confinement, mass gaps, chiral symmetry, and
Goldstone-mode specifications in gauge theories.

This project was motivated by Professor Anna Hasenfratz's September 18, 2026
CTQM seminar, *Confinement and mass generation without Goldstone Bosons:
a new paradigm*, and by the associated symmetric-mass-generation analysis
with Cenke Xu (arXiv:2604.02424).

## What is formalized

The repository separates mathematical implications from the numerical and
physical evidence used to motivate them.

The central chain is:

`specified symmetry assumptions`
→ `equal partner correlators`
→ `equal extracted masses under an explicit shared spectral interpretation`

Additional modules formalize:

- the squared-difference structure of a taste-breaking four-fermion interaction,
- independent phase properties such as a mass gap, bilinear condensate,
  symmetry preservation, and Goldstone modes,
- the staggered lattice sign and `U(1)_ε` phase transformation,
- the boundary between validity on specified numerical samples and a
  universal mathematical statement,
- the arithmetic anomaly-cancellation condition `8 ∣ Nf * Nc`,
- an abstract necessary-condition form of the anomaly obstruction,
- a merged RG fixed point as a beta-function zero of multiplicity at least two.

## Evidence boundary

The Lean proofs are conditional on their stated mathematical assumptions.
Numerical evidence supplies the physical reading point; the Lean results establish the specified consequences of the encoded assumptions.

The intended separation is:

`numerical/lattice evidence`
→ `explicit physical assumptions`
→ `kernel-checked mathematical implication`
→ `physical interpretation`

All Lean modules build successfully with no `sorry` or `admit`.

See [ROADMAP.md](ROADMAP.md) for the checkpoint structure and
[SPECIFICATION.md](SPECIFICATION.md) for the formalization boundaries.
