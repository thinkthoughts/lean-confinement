import LeanConfinement.Expectation

namespace LeanConfinement

/-- Two-point correlator of a position-dependent operator against a fixed origin. -/
def correlator {Site Operator Value : Type*} [Mul Operator] [Star Operator]
    (E : Expectation Operator Value) (O : OperatorField Site Operator)
    (x origin : Site) : Value :=
  E (O x * star (O origin))

end LeanConfinement
