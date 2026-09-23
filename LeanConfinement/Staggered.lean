import Mathlib

namespace LeanConfinement

/--
A finite-dimensional integer lattice site.

CP9 abstracts the lattice extent and boundary conditions; a site is
specified only by its integer coordinates.
-/
abbrev LatticeSite (d : Nat) :=
  Fin d → Int

/-- The coordinate sum `∑ᵢ xᵢ` used by the staggered sign. -/
def coordinateSum {d : Nat} (x : LatticeSite d) : Int :=
  Finset.univ.sum fun i => x i

/--
The staggered sign `ε(x) = (-1)^(∑ᵢ xᵢ)`, represented through the parity
of the coordinate sum rather than integer exponentiation.

This keeps the Lean definition close to the mathematical specification:
even coordinate sum gives `+1`, and otherwise gives `-1`.
-/
def staggeredEpsilon {d : Nat} (x : LatticeSite d) : Int :=
  if Even (coordinateSum x) then 1 else -1

/-- The staggered sign takes only the two values `±1`. -/
theorem staggeredEpsilon_eq_one_or_neg_one {d : Nat} (x : LatticeSite d) :
    staggeredEpsilon x = 1 ∨ staggeredEpsilon x = -1 := by
  unfold staggeredEpsilon
  split_ifs
  · exact Or.inl rfl
  · exact Or.inr rfl

/-- The staggered sign squares to one. -/
theorem staggeredEpsilon_sq {d : Nat} (x : LatticeSite d) :
    staggeredEpsilon x ^ 2 = 1 := by
  rcases staggeredEpsilon_eq_one_or_neg_one x with h | h <;>
    rw [h] <;> norm_num

end LeanConfinement
