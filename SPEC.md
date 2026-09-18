# Specification

## Scope

`lean-confinement` begins with an abstract logical vocabulary for phase
properties in gauge theories. Physical implications are introduced only
with explicit assumptions or source-supported results.

## Initial predicates

The first layer treats the following as independent propositions attached
to a theory:

- `Confining`
- `Gapped`
- `Conformal`
- `BilinearChiralCondensate`
- `HasGoldstoneModes`
- `ChiralSymmetryBroken`

This separation prevents a physical implication from being introduced
silently through a definition.

## Initial target

Specify a regime satisfying:

`Confining ∧ Gapped ∧ ¬ BilinearChiralCondensate ∧ ¬ HasGoldstoneModes`

and distinguish it logically from conventional chirally broken / Goldstone
and conformal specifications.

## Evidence boundary

Later checkpoints will distinguish lattice observations, inferred phase
properties, effective descriptions, and continuum generalizations.
