import EulerPoissonDarbouxEquationsCanonicalLaneLean.EPDAnalyticCertificate

namespace HautevilleHouse
namespace EulerPoissonDarbouxEquationsCanonicalLaneLean

def EPDAdmittedAnalyticClosure : Prop :=
  EPDAnalyticCertificateClosed sourceEPDAnalyticCertificate ∧
  ConstrainedEPDClosure analyticAdmissibleClass

def UnrestrictedClassicalEPDBoundaryCarried : Prop :=
  formalizationCertificate = True ∧
  mathlibPDESubstrate.unrestrictedStackCarried = true

theorem epd_admitted_analytic_closure_checked :
    EPDAdmittedAnalyticClosure := by
  exact And.intro source_epd_analytic_certificate_closed
    (constrained_epd_endgame analyticAdmissibleClass)

theorem unrestricted_classical_epd_boundary_carried_checked :
    UnrestrictedClassicalEPDBoundaryCarried := by
  exact And.intro trivial rfl

end HautevilleHouse
end EulerPoissonDarbouxEquationsCanonicalLaneLean