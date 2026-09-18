# lean-confinement Roadmap

Lean formalization of confinement, mass gaps, chiral symmetry, and
Goldstone-mode specifications in gauge theories.

The project begins with abstract phase specifications and progressively
adds the assumptions required to connect those specifications to
gauge-fermion systems, lattice observations, and continuum claims.

## CP1 — Core vocabulary

Define an abstract theory or physical system and predicates for:

- confinement
- mass gap
- conformality
- bilinear chiral condensation
- Goldstone modes

Goal: establish vocabulary without introducing physical implications
between predicates.

## CP2 — Phase specifications

Define representative regimes, including:

- conformal
- conventional chirally broken / Goldstone
- confining and fully gapped without a bilinear condensate
- confining and fully gapped without Goldstone modes

Prove elementary incompatibility and distinction results that follow
from the specifications alone.

## CP3 — Chiral / Goldstone layer

Introduce enough structure to distinguish:

- chiral symmetry
- spontaneous chiral symmetry breaking
- bilinear chiral condensates
- Goldstone-mode statements

Keep assumptions explicit. Do not encode a converse or implication
unless it has been separately specified.

## CP4 — Confinement / mass-gap layer

Refine the abstract predicates for confinement and a nonzero mass gap.

Identify which relations are definitions, which are assumptions, and
which require physical results beyond the initial specification.

## CP5 — Hasenfratz regime

Specify the proposed regime discussed for gauge-fermion systems:

    confinement
    + mass gap
    + no bilinear chiral condensate
    + no Goldstone modes

Formalize the logical distinction between this regime, a conformal
regime, and the conventional chirally broken regime.

No claim of physical realization follows from this specification alone.

## CP6 — Model parameters

Add model-specific parameters needed for examples such as:

- SU(2) with N_f = 4
- SU(3) with N_f = 8
- staggered fermions
- taste-breaking interactions

Separate model specification from conclusions inferred from numerical
or experimental evidence.

## CP7 — Phase transition structure

Introduce an abstract parameterized family of theories or effective
descriptions.

Specify:

- gapped and conformal regions
- phase boundaries
- continuous transitions

Formalize only those implications supported by explicit assumptions.

## CP8 — Fixed-point structure

Introduce RG fixed-point vocabulary sufficient to state an infrared /
ultraviolet fixed-point merger hypothesis.

Distinguish:

- existence of a fixed point
- IR versus UV behavior
- merger assumptions
- consequences derived from those assumptions

## CP9 — Evidence and continuum interpretation

Represent the distinction between:

1. lattice observables,
2. inferred phase properties,
3. effective-theory descriptions,
4. continuum generalizations.

The objective is to make explicit which conclusions follow from which
specified inputs.

## CP10 — Source-proof checkpoint

Select one quantitative or structural result from the source material
and connect it to the abstract layer with a complete Lean proof.

Target:

- `lake build` succeeds
- no `sorry`
- assumptions documented
- source and interpretation documented
