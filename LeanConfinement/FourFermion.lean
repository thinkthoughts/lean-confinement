import Mathlib.Algebra.Ring.Basic

namespace LeanConfinement

/--
The difference of squares appearing in the taste-breaking four-fermion
interaction.

In the source application:
  S corresponds to ψ̄ψ,
  P corresponds to ψ̄(γ₅ ⊗ ξ₅)ψ.

CP7 keeps `S` and `P` abstract. It does not construct fermion bilinears,
gamma matrices, or taste matrices.
-/
def bilinearSquareDifference {R : Type*} [Ring R] (S P : R) : R :=
  S ^ 2 - P ^ 2

/--
The four-fermion interaction term with coupling `u`.

This specifies only the algebraic term
  u * (S² - P²).

No RG relevance, fixed-point behavior, or physical realization is encoded
in this definition.
-/
def fourFermionInteraction {R : Type*} [Ring R] (u S P : R) : R :=
  u * bilinearSquareDifference S P

/--
The source-shaped interaction expands to the displayed difference of
squared bilinears.
-/
theorem fourFermionInteraction_eq
    {R : Type*} [Ring R] (u S P : R) :
    fourFermionInteraction u S P = u * (S ^ 2 - P ^ 2) := by
  rfl

/--
If the two specified bilinears agree, their four-fermion interaction
vanishes for every coupling.
-/
theorem fourFermionInteraction_eq_zero_of_eq
    {R : Type*} [Ring R] (u S P : R)
    (h : S = P) :
    fourFermionInteraction u S P = 0 := by
  subst P
  simp [fourFermionInteraction, bilinearSquareDifference]

end LeanConfinement
