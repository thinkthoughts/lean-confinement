# lean-confinement Roadmap

This roadmap records the completed CP1–CP12 formalization motivated by
Professor Anna Hasenfratz's symmetry → partner-correlator equality →
parity-doubling argument and the associated SMG discussion.

The checkpoints separate kernel-checked mathematical implications from
lattice evidence, spectral interpretation, and claims about physical
realization.

## CP1 — Symmetry action and expectation
Introduce configurations, symmetry transformations, observables, an
expectation functional, and explicit invariance assumptions.

Status: implemented.

## CP2 — Symmetry-related operators
Represent symmetry-related operators using an explicit action rather than
encoding correlator equality in the definition.

Status: implemented.

## CP3 — Two-point correlators
Define the correlator from an expectation functional, operator multiplication,
and adjoint/star structure.

Status: implemented.

## CP4 — Partner-correlator equality
Prove the primary kernel-checked implication from explicit symmetry assumptions
to equality of partner correlators.

Schematic statement:

`invariant expectation + symmetry-related operators`
→ `equal partner correlators`

Status: implemented and kernel-checked.

## CP5 — Spectral interpretation
Introduce a shared mass-extraction map separately from correlator equality.

This checkpoint deliberately does not identify correlator equality with mass
equality by definition.

Status: implemented.

## CP6 — Parity doubling / mass degeneracy
Compose partner-correlator equality with the shared spectral interpretation to
obtain equal extracted masses.

Schematic statement:

`equal partner correlators + shared mass extractor`
→ `equal extracted masses`

The concrete physical identification of measured lattice channels remains
external to this generic theorem.

Status: implemented and kernel-checked.

## CP7 — Taste-breaking four-fermion interaction
Formalize the source-backed squared-difference structure

`S² − P²`

and an interaction with an abstract overall coefficient

`u(S² − P²)`.

In the source correspondence, `S` represents the scalar bilinear and `P` the
pseudoscalar taste bilinear. The abstract coefficient avoids identifying
different overall coefficient/sign conventions across sources.

RG relevance and physical realization are not inferred here.

Status: implemented.

## CP8 — Phase logic
Represent mass gap, bilinear condensate, symmetry preservation, and Goldstone
modes as independent properties.

Prove that absence of a bilinear condensate alone supplies no implication to
gaplessness.

No exhaustive classification of infrared phases is asserted.

Status: implemented.

## CP9 — Staggered lattice structure
Formalize the staggered lattice site, parity sign, `U(1)_ε` phase, staggered
field transformation, and round-trip transformation identity.

This checkpoint does not claim that the formalized transformation by itself
establishes action/measure invariance or the concrete parity-partner relation
for measured lattice operators.

Status: implemented.

## CP10 — Evidence → theorem boundary
Represent validity on a specified sample separately from universal validity
and exhibit that sample validity alone supplies no universal implication.

This keeps numerical evidence distinct from a kernel-checked theorem whose
assumptions are explicitly stated.

Status: implemented.

## CP11 — Anomaly obstruction
Formalize the arithmetic Spin-`Z₄` anomaly-cancellation condition

`8 ∣ Nf * Nc`

and verify it for the specified `Nf = 4`, `Nc = 2` and `Nf = 8`, `Nc = 3`
examples.

Separately formalize the logical necessary-condition implication:

`AllowedInPrinciple → AnomalyFree`

together with

`¬ AnomalyFree`

implies

`¬ AllowedInPrinciple`.

This does not formalize an anomaly class, anomaly matching, gauging, or prove
that anomaly freedom dynamically produces a symmetric gapped phase.

Status: implemented and kernel-checked.

## CP12 — RG / fixed-point model
Represent a merged fixed point algebraically by requiring the beta function
to contain

`(g - g*)²`

as a factor, i.e. a zero of multiplicity at least two at `g*`.

Prove that the quadratic polynomial model satisfies this specification.

This formalizes the source-backed quadratic-zero structure without inferring
that measured RG flow in a particular gauge theory realizes the model.

Status: implemented and kernel-checked.

## Review boundary

The completed repository follows the chain:

`source statement`
→ `explicit specification`
→ `Lean theorem`
→ `kernel-checked implication`
→ `separate physical interpretation`

The Lean kernel checks the formal implications from encoded assumptions.
Numerical realization, continuum applicability, and physical interpretation
remain separate unless explicitly represented as assumptions.

## Verification

The complete repository builds successfully with the pinned Lean/mathlib
toolchain.

The Lean source contains no `sorry` or `admit`.

See [SPECIFICATION.md](SPECIFICATION.md) for the formalization boundaries and
[README.md](README.md) for the project overview.
