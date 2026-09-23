namespace LeanConfinement

abbrev HasBilinearCondensate (Phase : Type) :=
  Phase -> Prop

abbrev HasMassGap (Phase : Type) :=
  Phase -> Prop

abbrev PreservesSymmetry (Phase : Type) :=
  Phase -> Prop

abbrev HasGoldstoneModes (Phase : Type) :=
  Phase -> Prop

def SymmetricGapless {Phase : Type}
    (gap : HasMassGap Phase)
    (symm : PreservesSymmetry Phase)
    (p : Phase) : Prop :=
  symm p ∧ ¬ gap p

def SymmetricMassive {Phase : Type}
    (bilinear : HasBilinearCondensate Phase)
    (gap : HasMassGap Phase)
    (symm : PreservesSymmetry Phase)
    (p : Phase) : Prop :=
  symm p ∧ gap p ∧ ¬ bilinear p

def ConventionalBroken {Phase : Type}
    (bilinear : HasBilinearCondensate Phase)
    (gap : HasMassGap Phase)
    (goldstone : HasGoldstoneModes Phase)
    (p : Phase) : Prop :=
  bilinear p ∧ gap p ∧ goldstone p

theorem no_bilinear_does_not_imply_gapless
    {Phase : Type}
    (bilinear : HasBilinearCondensate Phase)
    (gap : HasMassGap Phase)
    (hWitness : ∃ p : Phase, gap p ∧ ¬ bilinear p) :
    ¬ ∀ p : Phase, ¬ bilinear p -> ¬ gap p := by
  rintro hUniversal
  obtain ⟨p, hGap, hNoBilinear⟩ := hWitness
  exact (hUniversal p hNoBilinear) hGap

end LeanConfinement
