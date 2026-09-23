cat > LeanConfinement/Symmetry.lean <<'EOF'
import LeanConfinement.Basic

namespace LeanConfinement

variable {G Operator Value : Type*}

/-- The expectation is invariant under the selected symmetry element. -/
def ExpectationInvariant [Monoid G] [MulAction G Operator]
    (E : Expectation Operator Value) (g : G) : Prop :=
  ∀ F : Operator, E (g • F) = E F

/-- Two operators are related by the selected symmetry element. -/
def AreSymmetryPartners [Monoid G] [MulAction G Operator]
    (g : G) (O₁ O₂ : Operator) : Prop :=
  g • O₁ = O₂

end LeanConfinement
EOF

lake build
