import Mathlib.Algebra.Ring.Basic

namespace LeanConfinement

/--
The squared-difference structure of two specified bilinears.
-/
def bilinearSquareDifference {R : Type*} [Ring R] (S P : R) : R :=
  S ^ 2 - P ^ 2

/--
The algebraic squared-difference structure of the taste-breaking
four-fermion interaction, with `u` treated as an abstract overall
coefficient.

In the source correspondence, `S` represents the scalar bilinear
and `P` the pseudoscalar taste bilinear. This definition captures
the algebraic structure `u * (S^2 - P^2)`; it does not assert
equality with a particular source convention for the full interaction
term or its overall coefficient.

No RG relevance, fixed-point behavior, or physical realization is
encoded in this definition.
-/
def fourFermionInteraction {R : Type*} [Ring R] (u S P : R) : R :=
  u * bilinearSquareDifference S P

/--
Expands the abstract four-fermion interaction into its
bilinear-square-difference form.
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
