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
  decide

/--
The SU(3), `Nf = 8` model satisfies the specified arithmetic
condition: `8 * 3 = 24`.
-/
theorem su3_nf8_satisfiesAnomalyCancellationCondition :
    SatisfiesAnomalyCancellationCondition 8 3 := by
  norm_num [SatisfiesAnomalyCancellationCondition]

end LeanConfinement
