import LeanConfinement.Correlator

namespace LeanConfinement

variable {G Site Operator Value : Type*}
variable [Group G] [Mul Operator] [Star Operator] [MulAction G Operator]

/-- A distinguished order-two group element, used to record parity semantics. -/
def IsParity (P : G) : Prop :=
  P * P = 1

/-- Parity partners record both involutivity and the operator mapping. -/
def AreParityPartners (P : G) (O₁ O₂ : Operator) : Prop :=
  IsParity P ∧ AreSymmetryPartners P O₁ O₂

/-- Generic CP4 engine: symmetry-related operator fields have equal correlators
when the action preserves product and star and the expectation is invariant.

No compatibility premise mentions `correlator` or `Expectation` except the
separate invariance premise itself. -/
theorem correlator_eq_of_symmetry
    (E : Expectation Operator Value)
    (g : G)
    (O₁ O₂ : OperatorField Site Operator)
    (x origin : Site)
    (hInv : ExpectationInvariant E g)
    (hPartner : ∀ y : Site, AreSymmetryPartners g (O₁ y) (O₂ y))
    (hMul : ActionRespectsMul (Operator := Operator) g)
    (hStar : ActionRespectsStar (Operator := Operator) g) :
    correlator E O₁ x origin = correlator E O₂ x origin := by
  unfold correlator
  rw [← hInv (O₁ x * star (O₁ origin))]
  rw [hMul (O₁ x) (star (O₁ origin))]
  rw [hStar (O₁ origin)]
  rw [hPartner x, hPartner origin]

/-- Parity-specific corollary. Involutivity belongs to the source-facing
parity specification; the generic equality proof itself does not require it. -/
theorem parity_partner_correlators_eq
    (E : Expectation Operator Value)
    (P : G)
    (O₁ O₂ : OperatorField Site Operator)
    (x origin : Site)
    (hInv : ExpectationInvariant E P)
    (hPartner : ∀ y : Site, AreParityPartners P (O₁ y) (O₂ y))
    (hMul : ActionRespectsMul (Operator := Operator) P)
    (hStar : ActionRespectsStar (Operator := Operator) P) :
    correlator E O₁ x origin = correlator E O₂ x origin := by
  apply correlator_eq_of_symmetry E P O₁ O₂ x origin hInv
  · intro y
    exact (hPartner y).2
  · exact hMul
  · exact hStar

end LeanConfinement
