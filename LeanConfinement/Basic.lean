import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Star.Basic

namespace LeanConfinement

/-- An expectation functional. CP1 keeps its codomain abstract: CP4 only needs equality. -/
abbrev Expectation (Observable Value : Type*) := Observable → Value

/-- A position-dependent operator. -/
abbrev OperatorField (Site Operator : Type*) := Site → Operator

end LeanConfinement
