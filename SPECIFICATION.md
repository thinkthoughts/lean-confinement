# Specification

## Scope
`lean-confinement` formalizes selected mathematical implications in the symmetric-mass-generation (SMG) discussion associated with Professor Anna Hasenfratz's seminar *Confinement and mass generation without Goldstone Bosons: a new paradigm*.

The first substantive target is:

`exact unbroken symmetry + invariant action/measure (or expectation) + symmetry-related operators → equality of partner correlators`.

A separate layer introduces the spectral assumptions under which equal correlators imply equal extracted masses.

## Why this target
This contains a genuine logical step from symmetry assumptions to an observable relation. It also cleanly separates a mathematical implication from the evidence that a numerical system realizes its assumptions.

Empirical inputs supply the physical reading point; Lean checks the conditional implication from the encoded assumptions.

## Specification principle
Leading assumptions are explicit in theorem statements. Definitions must not silently encode the conclusion.

- symmetry invariance: assumption or separately proved property
- correlator equality: theorem target
- spectral interpretation: additional specification
- mass equality: downstream conditional result
- numerical realization: empirical reading point supplying physical realization of the encoded assumptions

## Layer 1 — Configurations and symmetry
Introduce a configuration/field type `χ`, symmetry transformation/group `G`, its action, observables/operators, and an expectation functional. Keep the abstraction minimal; a complete path-integral specification enters at a subsequent layer.

## Layer 2 — Invariant expectation
Represent invariance explicitly, schematically `⟨F⟩ = ⟨G • F⟩`. A later lattice-specific layer may derive this from invariance of action and measure; the generic theorem may take it as a named assumption.

## Layer 3 — Symmetry partners
Represent `G O₁ G⁻¹ = O₂`. Lean may use a group action on operators if that is the faithful abstraction; document its correspondence to the written notation.

## Layer 4 — Correlators
Define `C_O(x) = ⟨O(x) O†(0)⟩`, introducing no more analytic or measure-theoretic structure than required.

## Layer 5 — Primary theorem
Target schematically:

`invariant expectation ∧ symmetryPartner G O₁ O₂ → C_O₁(x) = C_O₂(x)`.

Completion requires visible assumptions, no `sorry`, successful `lake build`, written-math correspondence, and a kernel-checked proof.

## Layer 6 — Spectral assumptions
Mass equality enters through an explicit spectral interpretation or mass-extraction map applied to equal correlators. Expose assumptions about asymptotic behavior, overlap, uniqueness, or domain as required.

## Layer 7 — Parity doubling
Keep two implications separate:

`exact symmetry → equal partner correlators`

`equal partner correlators + spectral assumptions → equal extracted masses`.

## Layer 8 — Taste-breaking four-fermion structure

Formalize the source-backed squared-difference structure

\[
S^2 - P^2,
\]

corresponding to the scalar and pseudoscalar taste bilinears appearing
in the taste-breaking four-fermion interaction. Treat the overall
coupling as an abstract coefficient shared across the source conventions.
The formalization specifies the algebraic interaction structure; RG relevance
and physical realization enter at subsequent specification layers.

## Layer 9 — Logical alternatives
Leave gaplessness unspecified by absence of a bilinear condensate alone. Represent bilinear symmetry breaking, symmetric gapless, symmetric massive, and SMG/topological or other nontrivial IR alternatives as explicitly specified phase possibilities.

## Layer 10 — Lattice-specific realization
After the generic theorem works, instantiate it with the staggered symmetry transformations and bilinear operators used in the SMG analysis.

## Layer 11 — Anomaly structure
Introduce the 't Hooft-anomaly obstruction through explicit specifications of anomaly freedom and allowed-in-principle phases. Anomaly classes, gauging, anomaly matching, and model-specific IR realizations enter as subsequent specification layers.

## Layer 12 — RG model
Formalize the RG beta-function/fixed-point-merger model through the source-backed quadratic-zero specification. Formalize the algebraic consequences of the specified beta function; applicability to the physical system supplies a subsequent physical reading point.

## Evidence boundary
`numerical/lattice evidence → explicit physical assumptions → kernel-checked conditional theorem → explicit spectral assumptions → physical interpretation`

The kernel certifies the formal implication from encoded assumptions; physical realization supplies a separate empirical reading point for those assumptions.

## Review criterion
A physicist unfamiliar with Lean should be able to identify:
1. the written mathematical statement,
2. its assumptions,
3. the corresponding Lean theorem,
4. what the kernel checked,
5. which physical or numerical inputs supply the theorem assumptions.
