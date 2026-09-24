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
Represent symmetry-related operators through an explicit action, with
correlator equality supplied later as a theorem consequence.

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

This checkpoint keeps correlator equality and mass equality as separate
specifications; the shared mass-extraction map supplies the bridge.

Status: implemented.

## CP6 — Parity doubling / mass degeneracy
Compose partner-correlator equality with the shared spectral interpretation to
obtain equal extracted masses.

Schematic statement:

`equal partner correlators + shared mass extractor`
→ `equal extracted masses`

The concrete physical identification of measured lattice channels enters as a
subsequent source-level specification for this generic theorem.

Status: implemented and kernel-checked.

## CP7 — Taste-breaking four-fermion interaction
Formalize the source-backed squared-difference structure

`S² − P²`

and an interaction with an abstract overall coefficient

`u(S² − P²)`.

In the source correspondence, `S` represents the scalar bilinear and `P` the
pseudoscalar taste bilinear. The abstract coefficient preserves the shared
algebraic structure across differing overall coefficient/sign conventions in
the sources.

RG relevance and physical realization enter at subsequent specification
layers.

Status: implemented.

## CP8 — Phase logic
Represent mass gap, bilinear condensate, symmetry preservation, and Goldstone
modes as separate properties.

Prove by explicit witness that absence of a bilinear condensate alone leaves
gaplessness unspecified.

The present predicates provide vocabulary for additional infrared-phase
specifications as those classifications are introduced explicitly.

Status: implemented.

## CP9 — Staggered lattice structure
Formalize the staggered lattice site, parity sign, `U(1)_ε` phase, staggered
field transformation, and round-trip transformation identity.

This checkpoint establishes the specified transformation algebra. Action/measure
invariance and the concrete parity-partner relation for measured lattice
operators enter as additional specifications.

Status: implemented.

## CP10 — Evidence → theorem boundary
Represent validity on a specified sample separately from universal validity
and exhibit a model where sample validity and universal validity differ.

This specifies the boundary between numerical evidence and a kernel-checked
theorem whose assumptions are explicitly stated.

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

Anomaly classes, anomaly matching, gauging, and model-specific dynamical realization supply source-level prerequisites for subsequent formalization.

Status: implemented and kernel-checked.

## CP12 — RG / fixed-point model
Represent a merged fixed point algebraically by requiring the beta function
to contain

`(g - g*)²`

as a factor, i.e. a zero of multiplicity at least two at `g*`.

Prove that the quadratic polynomial model satisfies this specification.

This checkpoint establishes the source-backed quadratic-zero structure.
Applicability to measured RG flow in a particular gauge theory enters as a
separate physical reading point.

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
supply separate reading points unless explicitly represented as assumptions.

## Verification

The complete repository builds successfully with the pinned Lean/mathlib
toolchain.

The Lean source contains no `sorry` or `admit`.

See [SPECIFICATION.md](SPECIFICATION.md) for the formalization boundaries and
[README.md](README.md) for the project overview.
