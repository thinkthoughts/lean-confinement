# CP1–CP4 — Symmetry, parity partners, and correlator equality

## Source boundary

This checkpoint uses two source statements from Butt, Catterall, and Hasenfratz,
*Symmetric Mass Generation with four SU(2) doublet fermions*, arXiv:2409.02062v2.
They are recorded separately because the paper does not identify them as the same transformation.

### Source transformation — Eq. (2.2)

The massless staggered action is stated to be invariant under the continuous transformation

```text
χ(x)  ↦ exp(i α ε(x)) χ(x)
χ̄(x) ↦ exp(i α ε(x)) χ̄(x)
ε(x) = (-1)^(Σ_i x_i)
```

The present Lean checkpoint does **not** identify this `U(1)` transformation with the parity action below.

### Source operators — Supplementary Table 1

The source labels the following channels as parity partners. The first concrete pair is

```text
PS : γ₅ ⊗ γ₅
S  : γ₀γ₅ ⊗ γ₀γ₅
```

with staggered-field representatives listed in Table 1. The source does not, in this paper,
spell out an algebraic parity transformation deriving PS from S or S from PS. CP1–CP4 therefore
do not encode such a lattice-specific derivation.

### Source evidence — Figure 5

The paper reports parity degeneracy of PS/S and PS2/S2 configuration-by-configuration in both
the strong- and weak-coupling regimes shown. It reports analogous V/A degeneracy.

This numerical observation is evidence about the simulated lattice system. It is not used as a
premise that simply asserts the Lean theorem's conclusion.

## Lean specification

The formal layer introduces:

```text
Expectation
OperatorField
ExpectationInvariant
AreSymmetryPartners
ActionRespectsMul
ActionRespectsStar
correlator
IsParity
AreParityPartners
```

The compatibility assumptions are intentionally below the correlator level:

```text
g • (A * B) = (g • A) * (g • B)
g • star A  = star (g • A)
```

They do not mention `correlator` or expectation values.

## CP4 theorem

The reusable theorem is

```text
correlator_eq_of_symmetry
```

and has the mathematical shape

```text
invariant expectation
+ symmetry-related operators at x and the origin
+ action respects multiplication
+ action respects adjoint/star
→ equal two-point correlators.
```

The parity-facing corollary is

```text
parity_partner_correlators_eq
```

`AreParityPartners` additionally records `P * P = 1`. Involutivity is source-facing parity
semantics; it is deliberately not a surplus premise of the generic theorem, whose proof does not
need it.

## What is kernel-checkable here

Lean can check the conditional implication from the displayed algebraic assumptions to correlator
equality. This checkpoint does not establish that:

- Eq. (2.2) is the parity transformation;
- the abstract `P` is the complete staggered-field parity operation;
- PS and S have been derived as partners from a lattice parity map;
- the simulated system satisfies every abstract assumption; or
- correlator equality by itself proves mass degeneracy.

The next source-specific step is to recover a written parity transformation that acts on the
staggered bilinears, if available, before claiming a lattice-specific PS↔S theorem.
