--- status: TODO
--- author(s): Sorin Popescu
--- notes: 

document { 
     Key => cohomology,
     Headline => "general cohomology functor",
      TT "cohomology", " -- a method name available for computing expressions
     of the forms ", TT "HH^i(X)", " and ", TT "HH^i(M,N)", ".",
     PARA,
     "If it is intended that ", TT "i", " be of class ", TO "ZZ", ", ", TT "M", " be of
     class ", TT "A", ", and ", TT "N", " be of
     class ", TT "B", ", then the method can be installed with ",
     PRE "     cohomology(ZZ, A, B) := opts -> (i,M,N) -> ...",
     SeeAlso => {"homology", "HH", "ScriptedFunctor"}
     }
document { 
     Key => (cohomology,ZZ,SheafOfRings),
     Headline => "cohomology of a sheaf of rings on a projective variety",
     Usage => "HH^d(R)",
     Inputs => {"i"=> ZZ=>"", "R" => SheafOfRings =>{"on a projective variety ", TT "X"}
	  },
     Outputs => {Module=>{"the ", TT "i", "-th cohomology group of ", TT "R", " as a vector space 
	       over the coefficient field of ", TT "X"}
	  },
     "The command computes the ", TT "i", "-th cohomology group of ", TT "R", 
     " as a vector space over the coefficient field of ", TT "X",".", 
     PARA,
     EXAMPLE {
	  "Cubic = Proj(QQ[x_0..x_2]/ideal(x_0^3+x_1^3+x_2^3))",
	  "HH^1(OO_Cubic)"
	  },
     SeeAlso => {"coherent sheaves",(cohomology,ZZ,SumOfTwists),(cohomology,ZZ,CoherentSheaf),hh,CoherentSheaf}
          }

document { 
     Key => (cohomology,ZZ,ChainComplexMap),
     Headline => "",
     Usage => "",
     Inputs => {
	  },
     Outputs => {
	  },
     Consequences => {
	  },     
     "description",
     EXAMPLE {
	  },
     Caveat => {},
     SeeAlso => {}
     }
document { 
     Key => (cohomology,ZZ,Module),
     Headline => "local cohomology of a module",
     Usage => "HH^i(M)",
     Inputs => {ZZ => ""
	  },
     Outputs => {"M" => Module =>" a graded module over its base polynomial ring"
	  },
     "The command computes the local cohomology of the graded 
     module ", TT "M", " with respect to the maximal irrelevant ideal 
     (the ideal of variables in the base ring of ", TT "M", ").",
     PARA,
     "The package ", TO "Dmodules", " has alternative code to
     compute local cohomology (even in the non homogeneous case)",
     PARA,
     "An example of a singular surface in projective fourspace 
     (with one apparent double point):",
     EXAMPLE {
	        "R = ZZ/101[x_0..x_4];",
	        "I = ideal(x_1*x_4-x_2*x_3, x_1^2*x_3+x_1*x_2*x_0-x_2^2*x_0, x_3^3+x_3*x_4*x_0-x_4^2*x_0)",
	        "M = R^1/module(I)",
	        "HH^1(M)",
	        "HH^2(M)"
	  },
     Caveat => {"There is no check made if the given module 
	  is graded over the base polynomial ring"},
     SeeAlso => {"Dmodules", }
     }
document { 
     Key => (cohomology,ZZ,SumOfTwists),
     Headline => "",
     Usage => "",
     Inputs => {
	  },
     Outputs => {
	  },
     Consequences => {
	  },     
     "description",
     EXAMPLE {
	  },
     Caveat => {},
     SeeAlso => {}
     }
document { 
     Key => (cohomology,ZZ,Sequence),
     Headline => "",
     Usage => "",
     Inputs => {
	  },
     Outputs => {
	  },
     Consequences => {
	  },     
     "description",
     EXAMPLE {
	  },
     Caveat => {},
     SeeAlso => {}
     }
document { 
     Key => (cohomology,ZZ,ChainComplex),
     Headline => "cohomology of a chain complex",
     Usage => "HH^i C",
     Inputs => {"i"=> ZZ => "", "C" => ChainComplex => ""
	  	  },
     Outputs => {Module => {"HH^i C", " -- homology at the i-th spot of the chain complex ", TT "C", "."}
	  },
     "description",
     "By definition, this is the same as computing HH_(-i) C.",
     EXAMPLE {
	  "needsPackage \"SimplicialComplexes\";",
          "D = simplicialComplex {{0,1,2},{0,1,3},{0,2,3},{1,2,3}}",
          "-- C = chainComplex D",  
          "-- HH^2 C"
	  },
     SeeAlso => {"GradedModule", "HH"}
     }
document { 
     Key => {(cohomology,ZZ,CoherentSheaf)},
     Headline => "cohomology of a coherent sheaf on a projective variety",
     Usage => {"HH^i(F) or cohomology(i,F)"},
     Inputs => {"i"=> ZZ=>"", "F" => CoherentSheaf =>{"on a projective variety ", TT "X"}
	  },
     Outputs => {Module=>{"the ", TT "i", "-th cohomology group of ", TT "F", " as a vector space 
	       over the coefficient field of ", TT "X"} 
	  },
     "The command computes the ", TT "i", "-th cohomology group of ", TT "F", 
     " as a vector space over the coefficient field of ", TT "X",".", "For i>0 this
     is currently done via local duality, while for i=0 it is computed as a limmit of Homs.
     Eventually there will exist an alternative option for computing sheaf cohomology
     via the Bernstein_gelfand-Gelfand correspondence",
     PARA,
     "As examples we compute the Picard numbers, Hodge numbers and
     dimension of the infinitesimal deformation spaces of various 
     quintic hypersurfaces in projective fourspace (or their Calabi-Yau
     small resolutions)",
     PARA,
     "We will make computations for quintics V in the family given by
     x_0^5+x_1^5+x_2^5+x_3^5+x_4^5-5*\lambda* x_0*x_1*x_2*x_3*x_4=0
     for different values of \lambda. If \lambda is general
     (that is \lambda not a 5th root of unity, 0 or \infinity), then
     the quintic V is smooth, so a Calabi-Yau threefold, and in that case 
     the above invariants are as follows",
     PARA,
     "h^{1,1}(V)=1,   h^{2,1}(V)=h^{1,2}(V)=101",
     PARA,
     "so the Picard group of V has rank 1 (generated by the hyperplane section)
     and the moduli space of V (which is unobstructed) has dimension 101:",
     EXAMPLE {
	  "Quintic = Proj(QQ[x_0..x_4]/ideal(x_0^5+x_1^5+x_2^5+x_3^5+x_4^5-101*x_0*x_1*x_2*x_3*x_4))",
	  "singularLocus(Quintic)",
	  "omegaQuintic = cotangentSheaf(Quintic);",
	  "h11 = rank HH^1(omegaQuintic)",
          "h12 = rank HH^2(omegaQuintic)"
	  },
     PARA,
     "By Hodge duality this is h^{2,1}. Directly h^{2,1} could be computed as",
     EXAMPLE {     
	  "h21 = rank HH^1(cotangentSheaf(2,Quintic))"
	  },
     PARA,
     "The Hodge numbers of a (smooth) projective variety can also be computed
     directly using the ", TO "hh", " command:",
     EXAMPLE {
	  "hh^(2,1)(Quintic)",
	  "hh^(1,1)(Quintic)"
	  },
     PARA,
     "Using the Hodge number we compute the topological Euler characteristic
     of V:",
     EXAMPLE {
	  "euler(Quintic)"
         },
     PARA,
     "When \lambda is a 5th root of unity the quintic V is singular. It has 125
     ordinary double points (nodes), namely the orbit of the point 
     (1:\lambda:\lambda:\lambda:\lambda) under a natural action of ZZ/5^3. 
     V has a projective small resolution W which is a Calabi-Yau threefold 
     (since the action of ZZ/5^3 is transitive on the sets of nodes of V, or 
     for instance just by blowing-up one of the (1,5) polarized abelian surfaces 
     V contains). Perhaps the most interseting such threefold is the one 
     for the value \lambda=1, which is defined over QQ and is modular 
     (see Schoen's work). To compute the  Hodge numbers of the small 
     resolution W of V we proceed as follows:",
     EXAMPLE {	  
	  "SchoensQuintic = Proj(QQ[x_0..x_4]/ideal(x_0^5+x_1^5+x_2^5+x_3^5+x_4^5-5*x_0*x_1*x_2*x_3*x_4))",
	  "Z = singularLocus(SchoensQuintic)",
	  "degree Z",
	  "II'Z = sheaf module ideal Z"
	  },
     PARA,
     "The defect of W (that is is h^{1,1}(W)-1) can be computed from the 
     cohomology of the ideal sheaf of the singular locus Z of V twisted by 5 
     (see Werner's thesis):",
     EXAMPLE {          
	  "defect = rank HH^1(II'Z(5))",
	  "h11 = defect + 1"
	  },
     PARA,
     "h^{2,1}(W) (the dimension of the moduli space of W) can be computed (Clemens-Griffiths,Werner) 
     as dim(HH^0(II_Z(5))/jacobian-ideal(V)_5):",
     EXAMPLE {
	  "quinticsJac = numgens source basis(5,ideal Z)", 
          "h21 = rank HH^0(II'Z(5)) - quinticsJac"
	  },
     PARA,
     "In other words W is rigid. W has topological Euler characteristic:",
     EXAMPLE {
	  "chiW = euler(Quintic)+2*degree(Z)" 
	  },
     SeeAlso => {"coherent sheaves",(cohomology,ZZ,SumOfTwists),(cohomology,ZZ,SheafOfRings),hh,CoherentSheaf}
     }

document {
     Key => {hh,(hh,Sequence,ProjectiveVariety)},
     Headline => "Hodge numbers of a smooth projective variety",
     Usage =>"hh^(p,q)(X)",
     Inputs => {"(p,q)" => "of non negative integers","X" => ""},
     Outputs => {ZZ=>""},
     "The command computes the Hodge numbers h^{p,q} of the smooth
     projective variety X. They are calculated as ",
     TT "HH^q(cotangentSheaf(p,X))",
     PARA,
     "As an example we compute h^11 of a K3 surface (Fermat quartic
     in projective threespace:",
     EXAMPLE {
          "X = Proj(QQ[x_0..x_3]/ideal(x_0^4+x_1^4+x_2^4+x_3^4))",
          "hh^(1,1)(X)"
          },
     Caveat => {"There is no check made if the projective variety X is smooth or not."},
     SeeAlso => {(cohomology,ZZ,SumOfTwists),(cohomology,ZZ,SheafOfRings),(euler,ProjectiveVariety)}
     }


document { 
     Key => [cohomology, Degree],
     Usage => "cohomology(d,F, Degree =>d)",
     Inputs => {
	  },
     Consequences => {
	  },     
     "description",
     EXAMPLE {
	  },
     Caveat => {},
     SeeAlso => {}
     }
 -- doc10.m2:731:     Key => (cohomology, ZZ, Module),
 -- doc10.m2:936:     Key => (cohomology, ZZ, SumOfTwists),
 -- doc10.m2:962:     Key => (cohomology, ZZ, CoherentSheaf),
 -- doc12.m2:1032:     Key => cohomology,
 -- doc9.m2:1573:     Key => (cohomology,ZZ,ChainComplex),
 -- doc9.m2:1590:     Key => (cohomology,ZZ,ChainComplexMap),
