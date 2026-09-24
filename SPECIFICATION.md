# Specification

## Scope
`lean-confinement` formalizes selected mathematical implications in the symmetric-mass-generation (SMG) discussion associated with Professor Anna Hasenfratz's seminar *Confinement and mass generation without Goldstone Bosons: a new paradigm*.

The first substantive target is:

`exact unbroken symmetry + invariant action/measure (or expectation) + symmetry-related operators → equality of partner correlators`.

A separate layer introduces the spectral assumptions under which equal correlators imply equal extracted masses.

## Why this target
This contains a genuine logical step from symmetry assumptions to an observable relation. It also cleanly separates a mathematical implication from the evidence that a numerical system realizes its assumptions.

Lean checks the conditional implication from encoded assumptions; the repository does not claim that Lean establishes the empirical inputs.

## Specification principle
Leading assumptions are explicit in theorem statements. Definitions must not silently encode the conclusion.

- symmetry invariance: assumption or separately proved property
- correlator equality: theorem target
- spectral interpretation: additional specification
- mass equality: downstream conditional result
- numerical realization: evidence external to the kernel proof unless separately formalized

## Layer 1 — Configurations and symmetry
Introduce a configuration/field type `χ`, symmetry transformation/group `G`, its action, observables/operators, and an expectation functional. Keep the abstraction minimal rather than pretending to formalize the complete path integral.

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
Correlator equality alone is not mass equality. Introduce an explicit spectral interpretation or mass-extraction map and expose assumptions about asymptotic behavior, overlap, uniqueness, or domain as required.

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
coupling as an abstract coefficient rather than identifying conventions
across sources. The formalization specifies the algebraic interaction
structure; it does not infer RG relevance or physical realization.

## Layer 9 — Logical alternatives
Formalize that absence of a bilinear condensate alone does not specify a gapless phase. Represent bilinear symmetry breaking, symmetric gapless, symmetric massive, and SMG/topological or other nontrivial IR alternatives without unsupported exhaustiveness.

## Layer 10 — Lattice-specific realization
After the generic theorem works, instantiate it with the staggered symmetry transformations and bilinear operators used in the SMG analysis.

## Layer 11 — Anomaly structure
Defer the 't Hooft-anomaly obstruction until anomaly, gauging, anomaly matching, and allowed IR realizations can be represented without overstating what has been proved.

## Layer 12 — RG model
Formalize the RG beta-function/fixed-point-merger model through the source-backed quadratic-zero specification. Distinguish algebraic consequences of the specified beta function from claims about applicability to the physical system.

## Evidence boundary
`numerical/lattice evidence → explicit physical assumptions → kernel-checked conditional theorem → explicit spectral assumptions → physical interpretation`

The kernel certifies the formal implication from encoded assumptions. It does not certify that nature satisfies those assumptions.

## Review criterion
A physicist unfamiliar with Lean should be able to identify:
1. the written mathematical statement,
2. its assumptions,
3. the corresponding Lean theorem,
4. what the kernel checked,
5. what remains physical or numerical input.
