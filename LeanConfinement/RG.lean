import Mathlib

namespace LeanConfinement

open Polynomial

/--
A merged fixed point is represented algebraically by a beta function
with a zero of multiplicity at least two at `gStar`.

This formalizes the quadratic-zero specification used for the mFP
scenario without asserting that a particular gauge theory realizes it.
-/
def IsMergedFixedPoint (β : Polynomial ℝ) (gStar : ℝ) : Prop :=
  (X - C gStar) ^ 2 ∣ β

/--
The quadratic model `c * (g - gStar)^2` satisfies the merged-fixed-point
specification.

This is the polynomial form of the local quadratic behavior; it does
not infer that measured RG flow is described by this model.
-/
theorem quadratic_beta_isMergedFixedPoint (c gStar : ℝ) :
    IsMergedFixedPoint (C c * (X - C gStar) ^ 2) gStar := by
  unfold IsMergedFixedPoint
  use C c
  ring

end LeanConfinement
