# lean-confinement Roadmap

This revision makes Professor Anna Hasenfratz's suggested symmetry → partner-correlator equality → parity-doubling argument the first substantive Lean target.

## CP1 — Symmetry action and expectation
Introduce configurations, symmetry transformations, observables, an expectation functional, and explicit invariance assumptions. Do not infer physical realization from definitions.

## CP2 — Symmetry-related operators
Represent the source-level relation `G O₁ G⁻¹ = O₂`, using a group action on operators where appropriate.

## CP3 — Two-point correlators
Define `C_O(x) = ⟨O(x) O†(0)⟩` with the minimum operator/adjoint structure required.

## CP4 — Partner-correlator equality
First primary kernel-checked theorem. From exact/unbroken symmetry, invariant expectation (or action/measure), and symmetry-related operators, prove

`⟨O₁(x) O₁†(0)⟩ = ⟨O₂(x) O₂†(0)⟩`.

Milestone: `lake build`, no `sorry`, assumptions documented, and written math shown beside the Lean theorem.

## CP5 — Spectral interpretation
Introduce separately the assumptions required to extract masses from correlators. Do not define correlator equality to mean mass equality.

## CP6 — Parity doubling / mass degeneracy
Prove conditionally:

`partner-correlator equality + shared spectral interpretation → equal extracted masses`.

Keep exact symmetry mathematics, spectral assumptions, numerical evidence, and physical conclusion distinct.

## CP7 — Taste-breaking four-fermion interaction
Formalize the source-backed interaction `u(S² − P²)`, corresponding to the seminar expression with `S = ψ̄ψ` and `P = ψ̄(γ₅ ⊗ ξ₅)ψ`.

Keep the fermion-field realization, symmetry-breaking interpretation, and RG relevance of the coupling `u` outside this checkpoint. The earlier schematic `V² − A²` target remains source-pending; that expression was not found in the current seminar slides or cited papers.

## CP8 — Phase logic
Formalize the point that absence of a bilinear condensate alone does not imply gaplessness. Distinguish bilinear symmetry breaking, symmetric gapless, symmetric massive, and SMG/topological or other nontrivial IR structures without asserting unsupported exhaustiveness.

## CP9 — Lattice realization
Instantiate the generic theorem with the staggered-fermion symmetry transformations and bilinear operators actually used in the SMG analysis.

## CP10 — Evidence → theorem boundary
Keep four levels explicit: lattice/numerical correlators; evidence for unbroken symmetry; kernel-checked conditional implications; spectral/physical interpretation.

## CP11 — Anomaly obstruction
Longer-term target: formalize enough symmetry, gauging, 't Hooft anomaly, anomaly matching, and IR structure to state an obstruction to a trivially gapped symmetry-preserving IR. Do not approximate this with an overstrong propositional placeholder.

## CP12 — RG / fixed-point model
Retain beta functions and the IR/UV fixed-point-merger model as a secondary target. The goal is explicit assumptions and consequences, rather than kernel-checking elementary algebra alone.

## First deliverable for review
1. Identify the exact source symmetry transformation and partner operators.
2. Show the theorem in ordinary mathematical notation.
3. Show the corresponding Lean theorem.
4. Document every assumption.
5. Prove it with no `sorry`.
6. Confirm `lake build`.
7. Explain what the Lean kernel checked and what remains physical/numerical input.

The first-result README should be understandable to a physicist with no prior Lean experience.
