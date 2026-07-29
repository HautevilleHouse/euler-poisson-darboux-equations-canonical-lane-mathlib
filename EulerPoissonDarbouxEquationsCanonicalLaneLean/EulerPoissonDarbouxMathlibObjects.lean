import EulerPoissonDarbouxEquationsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EulerPoissonDarbouxEquationsCanonicalLaneLean

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

deriving Repr, DecidableEq

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  localWitness : String
  bridgeEvidence : String
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧ O.object.theoremObject = sourceDescription

end HautevilleHouse
end EulerPoissonDarbouxEquationsCanonicalLaneLean