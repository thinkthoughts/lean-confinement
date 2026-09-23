import LeanConfinement.Parity
import LeanConfinement.Spectral

namespace LeanConfinement

variable {G Site Operator Value Mass : Type*}
variable [Group G] [Mul Operator] [Star Operator] [MulAction G Operator]

/--
CP6 composes the CP4 correlator theorem with the CP5 spectral extraction
specification.

If two operator fields are related by a symmetry whose action preserves
multiplication and star, the expectation is invariant under that symmetry,
and the same fixed mass-extraction procedure is applied to both complete
correlator functions with a common origin, then the extracted masses agree.

The single shared `extractMass` is intentional: CP6 does not assume two
independently chosen extraction procedures happen to return equal values.
-/
theorem equal_mass_of_symmetry
    (E : Expectation Operator Value)
    (g : G)
    (O₁ O₂ : OperatorField Site Operator)
    (origin : Site)
    (extractMass : MassExtractor Site Value Mass)
    (hInv : ExpectationInvariant E g)
    (hPartner : ∀ y : Site, AreSymmetryPartners g (O₁ y) (O₂ y))
    (hMul : ActionRespectsMul (Operator := Operator) g)
    (hStar : ActionRespectsStar (Operator := Operator) g) :
    extractMass (fun x => correlator E O₁ x origin) =
      extractMass (fun x => correlator E O₂ x origin) := by
  apply equal_mass_of_equal_correlator
  funext x
  exact correlator_eq_of_symmetry E g O₁ O₂ x origin
    hInv hPartner hMul hStar

/--
Parity-specific CP6 corollary.

The parity specification additionally records that `P` has order two.
As in CP4, involutivity is source-facing parity semantics; the mass-equality
proof uses the symmetry-partner component of `AreParityPartners`.

The same fixed `extractMass` is applied to both complete correlator functions.
-/
theorem parity_partner_masses_eq
    (E : Expectation Operator Value)
    (P : G)
    (O₁ O₂ : OperatorField Site Operator)
    (origin : Site)
    (extractMass : MassExtractor Site Value Mass)
    (hInv : ExpectationInvariant E P)
    (hPartner : ∀ y : Site, AreParityPartners P (O₁ y) (O₂ y))
    (hMul : ActionRespectsMul (Operator := Operator) P)
    (hStar : ActionRespectsStar (Operator := Operator) P) :
    extractMass (fun x => correlator E O₁ x origin) =
      extractMass (fun x => correlator E O₂ x origin) := by
  apply equal_mass_of_symmetry E P O₁ O₂ origin extractMass hInv
  · intro y
    exact (hPartner y).2
  · exact hMul
  · exact hStar

end LeanConfinement
