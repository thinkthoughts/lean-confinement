import LeanConfinement.Symmetry

namespace LeanConfinement

variable {G Operator : Type*}

/-- Compatibility of a symmetry action with operator multiplication. -/
def ActionRespectsMul [Monoid G] [Mul Operator] [MulAction G Operator] (g : G) : Prop :=
  ∀ A B : Operator, g • (A * B) = (g • A) * (g • B)

/-- Compatibility of a symmetry action with the adjoint/star operation. -/
def ActionRespectsStar [Monoid G] [Star Operator] [MulAction G Operator] (g : G) : Prop :=
  ∀ A : Operator, g • star A = star (g • A)

end LeanConfinement
