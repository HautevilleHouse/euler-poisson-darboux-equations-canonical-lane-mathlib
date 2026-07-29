import EulerPoissonDarbouxEquationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EulerPoissonDarbouxEquationsCanonicalLaneLean

def ConstrainedEPDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epd_endgame (A : AdmissibleClass) :
    ConstrainedEPDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end EulerPoissonDarbouxEquationsCanonicalLaneLean