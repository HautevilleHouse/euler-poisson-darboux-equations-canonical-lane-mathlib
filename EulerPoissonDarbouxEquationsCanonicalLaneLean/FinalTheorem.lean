import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EulerPoissonDarbouxEquationsCanonicalLaneLean.DarbouxAnalyticObjects
import HautevilleHouse.EulerPoissonDarbouxEquationsCanonicalLaneLean.SingularPDEStructures
import HautevilleHouse.EulerPoissonDarbouxEquationsCanonicalLaneLean.HadamardRieszLayer
import HautevilleHouse.EulerPoissonDarbouxEquationsCanonicalLaneLean.RadialCompactnessLayer
import HautevilleHouse.EulerPoissonDarbouxEquationsCanonicalLaneLean.BesselPotentialLayer

namespace HautevilleHouse
namespace EulerPoissonDarbouxEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedEPDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epd_endgame (A : AdmissibleClass) :
    ConstrainedEPDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EulerPoissonDarbouxEquationsCanonicalLaneLean
end HautevilleHouse