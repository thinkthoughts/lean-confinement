import Mathlib

namespace LeanConfinement

/--
`HoldsOnSample S P` specifies that property `P` holds for every
configuration in the finite sample `S`.

It does not, by definition, assert that `P` holds for configurations
outside `S`.
-/
def HoldsOnSample {Config : Type*}
    (S : Finset Config) (P : Config → Prop) : Prop :=
  ∀ c ∈ S, P c

/--
Holding on a specified finite sample does not, in general, entail
holding universally.

The witness below exhibits a sample and property for which
`HoldsOnSample S P` is true while `∀ c, P c` is false.
-/
theorem holdsOnSample_not_universal :
    ∃ (Config : Type) (S : Finset Config) (P : Config → Prop),
      HoldsOnSample S P ∧ ¬ (∀ c, P c) := by
  refine ⟨ℕ, {0}, fun c => c = 0, ?_, ?_⟩
  · intro c hc
    simpa using hc
  · intro h
    exact absurd (h 1) (by norm_num)

end LeanConfinement
