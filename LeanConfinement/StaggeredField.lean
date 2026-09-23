import LeanConfinement.StaggeredPhase

namespace LeanConfinement

/--
A field of values over the lattice, generic in a complex module `Value`
so this is not tied to any particular representation of the staggered
field content.
-/
abbrev StaggeredField (d : Nat) (Value : Type*) :=
  LatticeSite d → Value

variable {Value : Type*} [AddCommMonoid Value] [Module ℂ Value]

/--
The staggered `U(1)` transformation of a field by phase `α`.

Both `χ` and `χ̄` in the source transformation use this same rule:
`χ̄` does not receive the conjugate or inverse phase. This single
definition is therefore used for both fields.

This definition specifies the field transformation only. It does not
assert invariance of a lattice action under that transformation.
-/
def stagTransform (α : ℝ) {d : Nat} (F : StaggeredField d Value) :
    StaggeredField d Value :=
  fun x => Uepsilon α x • F x

/--
Applying `α` and then `-α` returns the original field.

This establishes invertibility of the specified transformation; it does
not establish that the transformation is a symmetry of any specified action.
-/
theorem stagTransform_round_trip
    (α : ℝ) {d : Nat} (F : StaggeredField d Value) :
    stagTransform (-α) (stagTransform α F) = F := by
  funext x
  show Uepsilon (-α) x • (Uepsilon α x • F x) = F x
  rw [← mul_smul]
  have h := Uepsilon_mul_neg (-α) x
  rw [neg_neg] at h
  rw [h, one_smul]

end LeanConfinement
