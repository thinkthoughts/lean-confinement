import Mathlib

namespace LeanConfinement

/--
The Spin-Z4 self-anomaly cancellation condition used in CP11:
the product `Nf * Nc` is divisible by eight.

This definition records only the arithmetic condition. It does not
formalize an anomaly class, anomaly matching, or an obstruction to a
symmetric gapped phase.
-/
def SatisfiesAnomalyCancellationCondition (Nf Nc : Nat) : Prop :=
  8 ∣ (Nf * Nc)

/--
The SU(2), `Nf = 4` model satisfies the specified arithmetic
condition: `4 * 2 = 8`.
-/
theorem su2_nf4_satisfiesAnomalyCancellationCondition :
    SatisfiesAnomalyCancellationCondition 4 2 := by
  unfold SatisfiesAnomalyCancellationCondition
  use 1

/--
The SU(3), `Nf = 8` model satisfies the specified arithmetic
condition: `8 * 3 = 24`.
-/
theorem su3_nf8_satisfiesAnomalyCancellationCondition :
    SatisfiesAnomalyCancellationCondition 8 3 := by
  unfold SatisfiesAnomalyCancellationCondition
  use 3

/--
A necessary-condition consequence of the anomaly criterion used in CP11.

If being allowed, in principle, to realize a fully symmetric,
trivially gapped phase requires anomaly freedom, then failure of
anomaly freedom rules out that allowance.

`AllowedInPrinciple` and `AnomalyFree` remain abstract propositions.
This theorem does not derive anomaly matching, identify an anomaly
class, or assert that anomaly freedom dynamically produces such a phase.
-/
theorem not_allowed_in_principle_of_not_anomalyFree
    {AllowedInPrinciple AnomalyFree : Prop}
    (hNecessary : AllowedInPrinciple → AnomalyFree)
    (hAnomalous : ¬ AnomalyFree) :
    ¬ AllowedInPrinciple :=
  fun hAllowed => hAnomalous (hNecessary hAllowed)

end LeanConfinement
