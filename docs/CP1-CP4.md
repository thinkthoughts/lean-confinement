# CP1–CP4 — Symmetry, parity partners, and correlator equality

## Result

CP1–CP4 formalizes one conditional implication:

\[
\text{invariant expectation}
+\text{ symmetry-related operators}
+\text{ action respects product and adjoint}
\Longrightarrow
\text{equal partner correlators}.
\]

Physical realization of these assumptions in the lattice theory supplies a
separate source-level reading point.

## Source boundary

This checkpoint uses statements from Butt, Catterall, and Hasenfratz,
*Symmetric Mass Generation with four SU(2) doublet fermions*,
arXiv:2409.02062v2 / Phys. Rev. Lett. 134, 031602 (2025).

The continuous staggered transformation and the parity-partner relation are
recorded separately, preserving the distinction made explicit by the source.

### Source transformation — Eq. (2.2)

The massless staggered action is stated to be invariant under

```text
χ(x)  ↦ exp(i α ε(x)) χ(x)
χ̄(x) ↦ exp(i α ε(x)) χ̄(x)

ε(x) = (-1)^(Σ_i x_i)
```

This supplies a concrete source example of an exact symmetry transformation.
The generic CP1–CP4 theorem uses an abstract symmetry action so that the
kernel-checked implication depends on explicit algebraic assumptions rather
than on a model-specific field representation.

### Source parity partners

The paper also studies meson channels and their parity partners. In the
supplementary operator table these include the pairs

- PS: `γ₅ ⊗ γ₅`
- S: `γ₀γ₅ ⊗ γ₀γ₅`
- V: `γₖ ⊗ γₖ`
- A: `γ₀γₖ ⊗ γ₀γₖ`

The numerical discussion reports parity-partner degeneracy, including
configuration-by-configuration degeneracy in the strong-coupling regime.

For the formalization, a concrete operator map between a measured pair is an
additional source-level specification. CP1–CP4 therefore represents the
partner relation abstractly and proves the consequence once that relation is
supplied.

## CP1 — Basic symmetry vocabulary

`Basic.lean` and `Symmetry.lean` introduce the generic objects used by the
proof:

- configurations,
- symmetry transformations,
- observables,
- expectation functionals,
- and explicit expectation invariance.

The leading specification is expectation invariance. Schematically,

\[
\langle F\rangle=\langle G\!\cdot\!F\rangle .
\]

At this layer, invariance is a named assumption. A later lattice-specific
formalization can supply a derivation from action and measure invariance.

## CP2 — Symmetry-related operators

`Operator.lean` represents the action of a symmetry on operators and the
relation between partner operators.

The formal structure keeps the partner relation explicit. Equality of
correlators is then available as a theorem target rather than as part of the
definition of a partner.

The action is also required to respect the algebraic operations used in a
two-point function, including multiplication and adjoint/star.

## CP3 — Correlators

`Correlator.lean` defines the two-point correlator from the expectation
functional and operator algebra. Schematically,

\[
C_O(x)=\langle O(x)O^\dagger(0)\rangle .
\]

This layer introduces the structure required by the proof while leaving
spectral interpretation to CP5.

## CP4 — Partner-correlator equality

The central theorem is `correlator_eq_of_symmetry`.

Its assumptions specify:

1. invariance of the expectation functional under the symmetry action,
2. the symmetry relation between the two operators,
3. compatibility of the action with multiplication,
4. compatibility of the action with adjoint/star.

From those assumptions, Lean proves equality of the partner correlators.

Schematically,

\[
\boxed{
\text{specified symmetry assumptions}
\Longrightarrow
C_{O_1}(x)=C_{O_2}(x)
}
\]

A parity-specialized corollary packages the same generic implication for the
parity-partner vocabulary used by the project.

## What the kernel checks

The kernel checks the formal implication encoded in CP1–CP4: once the stated
symmetry and operator assumptions are supplied, the corresponding correlators
are equal.

The source-level realization supplies separate reading points:

- which lattice transformation realizes the abstract symmetry,
- which measured operators realize the abstract partner relation,
- whether the action and measure realize the required invariance,
- and how the resulting correlators are interpreted physically.

This separation keeps the theorem reusable while making every bridge to the
lattice system visible as a specification.

## Next reading point — CP5 and CP6

CP1–CP4 ends at correlator equality.

CP5 introduces a shared mass-extraction map as an explicit spectral
specification. CP6 composes that map with CP4:

\[
\text{equal partner correlators}
+\text{ shared mass extractor}
\Longrightarrow
\text{equal extracted masses}.
\]

The mass-extraction layer therefore supplies the bridge from the
kernel-checked correlator theorem to the project's parity-doubling /
mass-degeneracy result.

## Verification

The CP1–CP4 modules are included in the complete `LeanConfinement` build.

The project verification criterion is:

- explicit assumptions,
- visible written-math correspondence,
- successful `lake build`,
- and kernel-checked proofs with no `sorry` or `admit`.

See [`SPECIFICATION.md`](../SPECIFICATION.md) for the full specification
layers and [`ROADMAP.md`](../ROADMAP.md) for the CP1–CP12 sequence.
