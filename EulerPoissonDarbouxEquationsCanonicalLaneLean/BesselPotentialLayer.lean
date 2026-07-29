import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EulerPoissonDarbouxEquationsCanonicalLaneLean

/-! 
# Bessel Potential Layer

This module defines Bessel potential structures and their role in 
regularity for the Euler-Poisson-Darboux equation.
-/

structure BesselPotential where
  index : ℝ
  potentialKernel : ℝ → ℝ
  scale : ℝ
  isIntegrable : Prop
  satisfiesReproducing : Prop

def primitiveBesselPotential : BesselPotential := {
  index := 0
  potentialKernel := fun _ => 0
  scale := 1
  isIntegrable := True
  satisfiesReproducing := True
}

structure BesselPotentialSpace where
  potential : BesselPotential
  normedSpaceStructure : Prop
  containsRadialSolutions : Prop
  embeddingSobolev : Prop

def primitiveBesselPotentialSpace : BesselPotentialSpace := {
  potential := primitiveBesselPotential
  normedSpaceStructure := True
  containsRadialSolutions := True
  embeddingSobolev := True
}

def BesselPotentialClosed (B : BesselPotential) (S : BesselPotentialSpace) : Prop :=
  B.isIntegrable ∧ B.satisfiesReproducing ∧ S.normedSpaceStructure ∧ S.containsRadialSolutions ∧ S.embeddingSobolev

end EulerPoissonDarbouxEquationsCanonicalLaneLean
end HautevilleHouse