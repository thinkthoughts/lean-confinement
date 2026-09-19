# lean-confinement Roadmap

Lean formalization of RG fixed-point structure, symmetry/anomaly constraints,
confinement, mass generation, and Goldstone-mode specifications in gauge theories.

This revision follows the mathematical structure exposed in the September 18,
2026 CTQM seminar rather than beginning from phase labels alone.

## CP1 — Core mathematical vocabulary
Introduce abstract theories, couplings, RG flows, observables, and phase
specifications. Keep physical implications out of definitions.

## CP2 — Symmetry and anomaly constraints
Formalize global/gauged symmetries, anomaly constraints, anomaly-free
subgroups, and admissibility conditions for a symmetric gapped phase.
Anomaly cancellation is treated as necessary rather than automatically
sufficient for symmetric mass generation.

## CP3 — RG beta-function model
Encode the simple NJL-inspired two-coupling beta-function ansatz used for the
continuum-QFT interpretation: gauge coupling, symmetry-reducing four-fermion
coupling, beta functions, and fixed points as simultaneous zeros. Coefficients
and assumptions remain explicit.

## CP4 — Fixed points
Define and distinguish Gaussian, infrared, ultraviolet, and critical fixed
points. Prove algebraic fixed-point statements for a chosen specialization of
the beta-function ansatz.

## CP5 — IR/UV fixed-point merger
Formalize parameter dependence and the merger condition. Candidate theorem:
below the critical parameter the IR and UV fixed points are distinct; at the
critical parameter they coincide; the four-fermion direction becomes marginal
at the merger. Separate algebraic consequences from physical interpretation.

## CP6 — Symmetry at the merger
Specify symmetry content attached to the IR and UV fixed points. Formalize the
source-specific merged scenario only after its assumptions are explicit.

## CP7 — Phase specifications and symmetric mass generation
Define conformal/gapless, conventional chirally broken, confining/fully gapped,
symmetric-mass-generation, no-bilinear-condensate, no-Goldstone, and
taste-breaking specifications. Physical realization does not follow from the
specification itself.

## CP8 — Staggered-fermion and taste structure
Add staggered fermions, taste-breaking interactions, taste restoration/breaking
indicators, and the taste ratio `R = M_PS / M_PS2`. Distinguish exact lattice,
approximate/emergent taste, and continuum symmetry.

## CP9 — Finite-size scaling
Represent dimensionless combinations such as `L * M_PS`, scaling variables
near a critical coupling, curve-collapse specifications, and competing
ordinary second-order versus fixed-point-merger/BKT-like scaling assumptions.
Numerical fits remain evidence supplied to the formal layer.

## CP10 — Evidence → interpretation boundary
Represent four levels:
1. lattice observables,
2. inferred phase properties,
3. RG/effective-theory descriptions,
4. continuum-QFT generalizations.

Record assumptions permitting movement between levels.

## CP11 — Model instances
Add descriptors for SU(2) with N_f = 4 and SU(3) with N_f = 8. Keep model
identity separate from numerically or analytically established claims.

## CP12 — Source-proof checkpoint
Choose one equation-level result from the Hasenfratz–Xu continuum model and
complete an end-to-end Lean proof.

Preferred first target: an algebraic statement about the beta-function fixed
points and their merger.

Completion criteria:
- `lake build` succeeds
- no `sorry`
- assumptions documented
- source equation identified
- numerical evidence distinguished from analytic assumptions
- physical interpretation documented separately from the proof
