import LeanConfinement.Phase
import LeanConfinement.Chiral
import LeanConfinement.Goldstone
import LeanConfinement.Confinement
import LeanConfinement.MassGap

namespace LeanConfinement

/--
A conventional schematic specification combining confinement, a gap,
a bilinear chiral condensate, and Goldstone modes.
-/
def ConventionalBrokenPhase (T : Theory) : Prop :=
  Confining T ∧ Gapped T ∧
  BilinearChiralCondensate T ∧ HasGoldstoneModes T

/--
The abstract regime motivating this project: confinement and a mass gap
without a bilinear chiral condensate or Goldstone modes.
-/
def ConfiningGappedNoGoldstone (T : Theory) : Prop :=
  Confining T ∧ Gapped T ∧
  ¬ BilinearChiralCondensate T ∧ ¬ HasGoldstoneModes T

end LeanConfinement
