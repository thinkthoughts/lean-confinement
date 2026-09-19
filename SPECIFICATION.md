# Specification

## Scope
`lean-confinement` formalizes selected mathematical structures used to describe
a proposed confining, fully gapped phase without conventional chiral symmetry
breaking or Goldstone modes, together with the RG fixed-point picture used in
its continuum-QFT interpretation.

The initial source target is Professor Anna Hasenfratz's September 18, 2026
CTQM seminar, especially the continuum interpretation associated with
Hasenfratz and Cenke Xu, arXiv:2604.02424.

## Specification principle
Definitions specify mathematical objects. Physical implications enter only as
explicit assumptions or source-supported propositions.

Keep distinct:
- lattice observables
- phase-property inferences
- RG/effective descriptions
- continuum generalizations

## Layer 1 — RG objects
Initial objects include couplings, beta functions, RG flow, fixed points,
IR/UV classifications, and parameter-dependent fixed-point merger. A fixed
point is represented by vanishing beta functions; IR/UV labels require
explicit stability or direction data.

## Layer 2 — Symmetry and anomaly constraints
Represent symmetry specifications, gauged/global symmetry, anomaly constraints,
anomaly-free reductions, and symmetry-preserving versus symmetry-breaking mass
generation. Anomaly cancellation alone is not encoded as sufficient for SMG.

## Layer 3 — Phase predicates
Keep `Confining`, `Gapped`, `Conformal`, `BilinearChiralCondensate`,
`HasGoldstoneModes`, `ChiralSymmetryBroken`, and `TasteBroken` logically
separable unless a theorem or assumption connects them.

## Layer 4 — Fixed-point merger
The first equation-level target is the two-coupling RG ansatz illustrating
separate IR/UV fixed points and their possible merger. Prove only algebraic
consequences of the encoded beta functions and parameter assumptions.
Applicability to a particular gauge theory remains a separate interpretation.

## Layer 5 — Taste observable
Introduce `R = M_PS / M_PS2` with positivity/nonzero-denominator assumptions.
Express limiting or continuity claims without turning numerical evidence into
definitional equality.

## Layer 6 — Finite-size scaling
Represent finite-volume observables and scaling variables sufficiently to state
the competing transition scenarios. Curve collapse, fitted exponents, and
model preference are evidence rather than kernel-proved consequences of the
abstract definitions.

## Model instances
Later checkpoints may instantiate SU(2), N_f = 4; SU(3), N_f = 8;
staggered-fermion lattice actions; and taste-breaking four-fermion interactions.

## Source-proof target
The first complete proof should be a compact algebraic result about fixed
points or their merger derived from an explicitly transcribed source equation.

Required provenance:
- source paper/equation or slide
- encoded assumptions
- Lean statement
- kernel-checked proof
- interpretation note

## Evidence boundary
    specified lattice reading
        → explicit inference assumptions
        → phase/RG statement
        → admissible continuum interpretation

No arrow is supplied merely by naming the endpoint.
