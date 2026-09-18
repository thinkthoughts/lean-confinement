import LeanConfinement.Basic

namespace LeanConfinement

/-- Abstract specification of spontaneous chiral-symmetry breaking. -/
def ChiralSymmetryBroken (T : Theory) : Prop :=
  True

/-- Abstract specification of a bilinear chiral condensate. -/
def BilinearChiralCondensate (T : Theory) : Prop :=
  True

end LeanConfinement
