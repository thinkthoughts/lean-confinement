import LeanConfinement.Staggered

namespace LeanConfinement

/--
The site-dependent `U(1)` phase `U_ε(α, x) = exp(i α ε(x))`, built from the
staggered sign defined in `Staggered.lean`.

This defines the phase factor only. It makes no claim about which operator
this phase acts on, or that it maps one measured channel into another.
-/
noncomputable def Uepsilon (α : ℝ) {d : Nat} (x : LatticeSite d) : ℂ :=
  Complex.exp (Complex.I * (α : ℂ) * (staggeredEpsilon x : ℂ))

/--
`U_ε(α, x)` and `U_ε(-α, x)` are mutually inverse.

This establishes invertibility of the specified phase factor independently
of any operator-level symmetry-partner claim.
-/
theorem Uepsilon_mul_neg (α : ℝ) {d : Nat} (x : LatticeSite d) :
    Uepsilon α x * Uepsilon (-α) x = 1 := by
  unfold Uepsilon
  rw [← Complex.exp_add]
  have h : Complex.I * (α : ℂ) * (staggeredEpsilon x : ℂ) +
      Complex.I * ((-α : ℝ) : ℂ) * (staggeredEpsilon x : ℂ) = 0 := by
    push_cast
    ring
  rw [h, Complex.exp_zero]

end LeanConfinement
