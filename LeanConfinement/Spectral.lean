import LeanConfinement.Correlator

namespace LeanConfinement

/--
A specified procedure for extracting a spectral mass from a full two-point
correlator with the origin fixed, viewed as a function of the remaining
site. CP5 deliberately leaves the procedure itself unspecified: no
exponential fit, effective-mass plateau, or transfer-matrix eigenvalue is
asserted here.
-/
abbrev MassExtractor (Site Value Mass : Type*) :=
  (Site → Value) → Mass

/--
If the same, fixed extraction procedure is applied to two correlator
functions that agree at every site, it returns equal masses.

This proof is close to `congrArg`; the content of CP5 is introducing
`MassExtractor` as a named, unspecified object, not the difficulty of
this step.
-/
theorem equal_mass_of_equal_correlator
    {Site Value Mass : Type*}
    (extractMass : MassExtractor Site Value Mass)
    (C₁ C₂ : Site → Value)
    (hC : C₁ = C₂) :
    extractMass C₁ = extractMass C₂ := by
  rw [hC]

end LeanConfinement
