# CTQM seminar extraction — 2026-09-18

**Speaker:** Professor Anna Hasenfratz  
**Title:** *Confinement and mass generation without Goldstone Bosons: a new paradigm*

## Primary formalization targets

### Continuum-QFT / RG layer
The talk presents a simple NJL-inspired ansatz for RG beta functions with a
gauge coupling and a symmetry-reducing four-fermion interaction. It contrasts
separate IR/UV fixed points with a merged IR–UV fixed point.

The source-backed formal target is the quadratic-zero structure associated
with the merged fixed point. In the repository this enters as an algebraic
specification of a beta function containing a factor

`(g - g*)²`.

Finite-size-scaling evidence and the physical interpretation of the RG flow
supply separate reading points.

### Symmetry/anomaly layer
The talk contrasts conventional chiral-symmetry-breaking behavior with a
confining, fully gapped strong-coupling phase with no bilinear condensate and
no Goldstone modes. The seminar also distinguishes the exact `U(1)_ε`
symmetry from staggered shift/taste symmetry and discusses anomaly constraints
on symmetric mass generation.

The formalization separates these properties so that relations among mass
gap, bilinear condensate, symmetry preservation, and Goldstone modes enter
through explicit specifications.

For the anomaly layer, the repository records the arithmetic condition

`8 ∣ Nf * Nc`

for the specified examples and separately represents anomaly freedom as a
necessary condition for an allowed symmetric gapped phase. Detailed anomaly
classes, anomaly matching, gauging, and dynamical realization provide
subsequent source-level specifications.

### Lattice evidence layer
The seminar presents weak-coupling conformal/gapless behavior and
strong-coupling confining/fully-gapped behavior, together with finite-size
scaling and taste-symmetry diagnostics.

Relevant reading points include:

- the taste ratio `R = M_PS / M_PS2`,
- strong taste breaking in the strong-coupling phase,
- approximate taste restoration at weak coupling,
- parity-partner correlator degeneracy,
- and finite-size-scaling comparisons between a second-order fit and a
  merged-fixed-point fit.

These numerical observations motivate formal targets while remaining
source-level evidence for the physical realization.

### Staggered / four-fermion layer
The seminar writes the free staggered lattice action with the staggered sign

`η_μ(n) = (-1)^(Σ_{k=1}^{μ-1} n_k)`

and discusses the symmetry structure that remains at nonzero lattice spacing.

Its Symanzik effective-action discussion includes a taste-breaking
four-fermion interaction with the algebraic core

`S² - P²`,

where the source correspondence is the scalar bilinear `S = ψ̄ψ` and a
pseudoscalar taste bilinear represented schematically by
`P = ψ̄(γ₅ ⊗ ξ₅)ψ`.

The repository formalizes this squared-difference structure with an abstract
overall coupling. RG relevance enters through the later RG specification.

## Evidence boundary
The seminar supplies numerical/lattice evidence and continuum-QFT
interpretations at distinct layers. The repository records the route as

`source evidence`
→ `explicit physical specification`
→ `Lean theorem`
→ `kernel-checked consequence`
→ `physical interpretation`.

Lean definitions supply the formal objects and checked implications.
Applicability to the lattice systems enters through source-level physical
specifications and numerical reading points.

## Repository reading point
The seminar extraction therefore supports several linked formal layers:

1. symmetry assumptions → equal partner correlators,
2. spectral specification → equal extracted masses,
3. taste-breaking four-fermion algebra,
4. separate phase predicates,
5. staggered lattice transformation structure,
6. anomaly-cancellation arithmetic and necessary-condition logic,
7. quadratic-zero merged-fixed-point specification.

Each layer names the assumptions required for its theorem target. Additional
physical generalizations trail those leading specifications.
