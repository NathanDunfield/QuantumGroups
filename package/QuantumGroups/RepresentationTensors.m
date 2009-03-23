(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



BeginPackage["QuantumGroups`RepresentationTensors`",{"QuantumGroups`","QuantumGroups`Utilities`MatrixWrapper`","QuantumGroups`Utilities`Debugging`","QuantumGroups`Utilities`DataPackage`","QuantumGroups`RootSystems`","QuantumGroups`Algebra`","QuantumGroups`Representations`","QuantumGroups`MatrixPresentations`","QuantumGroups`RMatrix`"}];


RepresentationTensor::usage="";


Domain::usage="";


Codomain::usage="";


DomainBasis::usage="";


CodomainBasis::usage="";


Algebra::usage="";


IdentityMap::usage="";


ZeroTensorQ::usage="";


CheckRepresentationTensor::usage="";


RepresentationTensorErrors;


QuantumTrace::usage="";


Distributor;Associator;


BraidingMap;InverseBraidingMap;NormalisedBraidingMap;InverseNormalisedBraidingMap;


DecompositionMap;InverseDecompositionMap;


PermuteDirectSummands;DirectSumProjectionMap;DirectSumInclusionMap;


Begin["`Private`"];


RepresentationTensor/:Codomain[RepresentationTensor[_,V_,_,_,_,_]]:=V
RepresentationTensor/:Domain[RepresentationTensor[_,_,_,W_,_,_]]:=W


RepresentationTensor/:CodomainBasis[RepresentationTensor[_,_,\[Beta]_,_,_,_]]:=\[Beta]
RepresentationTensor/:DomainBasis[RepresentationTensor[_,_,_,_,\[Beta]_,_]]:=\[Beta]


RepresentationTensor/:Algebra[RepresentationTensor[\[CapitalGamma]_,_,_,_,_,_]]:=\[CapitalGamma]


IdentityMap[\[CapitalGamma]_,CircleTimes[],\[Beta]_]:=RepresentationTensor[\[CapitalGamma],\[DoubleStruckCapitalC],\[Beta],\[DoubleStruckCapitalC],\[Beta],{{ZeroVector[Rank[\[CapitalGamma]]],identityMatrix[1]}}]


IdentityMap[\[CapitalGamma]_,V_,\[Beta]_]:=RepresentationTensor[\[CapitalGamma],V,\[Beta],V,\[Beta],{#,identityMatrix[WeightMultiplicity[\[CapitalGamma],V,#]]}&/@Weights[\[CapitalGamma],V]]


ZeroMap[\[CapitalGamma]_,V_,\[Beta]V_,W_,\[Beta]W_]:=RepresentationTensor[\[CapitalGamma],V,\[Beta]V,W,\[Beta]W,{#,zeroMatrix[WeightMultiplicity[\[CapitalGamma],V,#],WeightMultiplicity[\[CapitalGamma],W,#]]}&/@Weights[\[CapitalGamma],V]]


ZeroTensorQ[RepresentationTensor[_,_,_,_,_,matrices_]]:=And@@(ZeroMatrixQ[#[[2]]]&/@matrices)


RepresentationTensor/:Together[RepresentationTensor[\[CapitalGamma]_,Vc_,\[Beta]c_,Vd_,\[Beta]d_,data_]]:=RepresentationTensor[\[CapitalGamma],Vc,\[Beta]c,Vd,\[Beta]d,Together[data]]


CheckRepresentationTensor[F:RepresentationTensor[\[CapitalGamma]_,Vc_,\[Beta]c_,Vd_,\[Beta]d_,_],\[Lambda]_]:=And@@(DebugEcho[ZeroMatrixQ[Simplify[MatrixPresentation[\[CapitalGamma]][#][Vc,\[Beta]c,\[Lambda]].F[\[Lambda]]-F[\[Lambda]+OperatorWeight[\[CapitalGamma]][#]].MatrixPresentation[\[CapitalGamma]][#][Vd,\[Beta]d,\[Lambda]]]]]&/@Generators[\[CapitalGamma]])


RepresentationTensorErrors[F:RepresentationTensor[\[CapitalGamma]_,Vc_,\[Beta]c_,Vd_,\[Beta]d_,_],\[Lambda]_]:=DeleteCases[{#,MatrixPresentation[\[CapitalGamma]][#][Vc,\[Beta]c,\[Lambda]].F[\[Lambda]],F[\[Lambda]+OperatorWeight[\[CapitalGamma]][#]].MatrixPresentation[\[CapitalGamma]][#][Vd,\[Beta]d,\[Lambda]]}&/@Generators[\[CapitalGamma]],{_,a_,b_}/;ZeroMatrixQ[Simplify[a-b]]]


CheckRepresentationTensor[F:RepresentationTensor[\[CapitalGamma]_,_,_,V_,_,_]]:=And@@(CheckRepresentationTensor[F,#]&/@Weights[\[CapitalGamma],V])


RepresentationTensor/:RepresentationTensor[\[CapitalGamma]_,V_,_,W_,_,matrices_][\[Lambda]_]:=(Cases[matrices,{\[Lambda],m_Matrix}:>m]~Join~{ZeroesMatrix[WeightMultiplicity[\[CapitalGamma],V,\[Lambda]],WeightMultiplicity[\[CapitalGamma],W,\[Lambda]]]})[[1]]


RepresentationTensor/:Plus[t__RepresentationTensor]/;(SameQ[Codomain/@{t}]\[And]SameQ[Domain/@{t}]\[And]SameQ[CodomainBasis/@{t}]\[And]SameQ[DomainBasis/@{t}]\[And]SameQ[Algebra/@{t}]):=Module[{t1,\[CapitalGamma],domain,\[Lambda]},
t1=First[{t}];
\[CapitalGamma]=Algebra[t1];
domain=Domain[t1];
RepresentationTensor[\[CapitalGamma],Codomain[t1],CodomainBasis[t1],Domain[t1],DomainBasis[t1],
Table[(\[Lambda]=Weights[\[CapitalGamma],domain][[i]];{\[Lambda],Plus@@(#[\[Lambda]]&/@{t})}),{i,1,Length[Weights[\[CapitalGamma],domain]]}]]
]


RepresentationTensor/:\[Alpha]_ RepresentationTensor[\[CapitalGamma]_,V1_,\[Beta]1_,V2_,\[Beta]2_,matrices_List]:=RepresentationTensor[\[CapitalGamma],V1,\[Beta]1,V2,\[Beta]2,{#[[1]],\[Alpha] #[[2]]}&/@matrices]


RepresentationTensor/:(F:RepresentationTensor[\[CapitalGamma]_,V1_,\[Beta]1_,V2_,\[Beta]2_,_List]).(G:RepresentationTensor[\[CapitalGamma]_,V2_,\[Beta]2_,V3_,\[Beta]3_,_List]):=RepresentationTensor[\[CapitalGamma],V1,\[Beta]1,V3,\[Beta]3,{#,Together[F[#].G[#]]}&/@SortWeights[\[CapitalGamma]][Union[Weights[\[CapitalGamma],V1]~Join~Weights[\[CapitalGamma],V3]]]]


RepresentationTensor/:(F:RepresentationTensor[\[CapitalGamma]_,V3_,\[Beta]3_,V2_,\[Beta]2_,_]).(Gs:{RepresentationTensor[\[CapitalGamma]_,V2_,\[Beta]2_,V1_,\[Beta]1_,_]...}):=F.#&/@Gs


RepresentationTensor/:(Fs:{RepresentationTensor[\[CapitalGamma]_,V3_,\[Beta]3_,V2_,\[Beta]2_,_]...}).(G:RepresentationTensor[\[CapitalGamma]_,V2_,\[Beta]2_,V1_,\[Beta]1_,_]):=#.G&/@Fs


RepresentationTensor/:(F:RepresentationTensor[\[CapitalGamma]_,V1_,\[Beta]c_,V2_,\[Beta]d_,_])\[CircleTimes](G:RepresentationTensor[\[CapitalGamma]_,V3_,\[Beta]c_,V4_,\[Beta]d_,_]):=Module[{\[Lambda],\[Mu],codomain=V1\[CircleTimes]V3,domain=V2\[CircleTimes]V4,productWeights,rightWeights},
productWeights=SortWeights[\[CapitalGamma]][Union[Weights[\[CapitalGamma],domain]~Join~Weights[\[CapitalGamma],codomain]]];
rightWeights=SortWeights[\[CapitalGamma]][Union[Weights[\[CapitalGamma],V4]~Join~Weights[\[CapitalGamma],V3]]];
RepresentationTensor[\[CapitalGamma],codomain,\[Beta]c,domain,\[Beta]d,
Table[\[Lambda]=productWeights[[i]];{\[Lambda],BlockDiagonalMatrix@@Table[\[Mu]=rightWeights[[j]];Expand[MatrixKroneckerProduct[F[\[Lambda]-\[Mu]],G[\[Mu]]]],{j,1,Length[rightWeights]}]},{i,1,Length[productWeights]}]
]
]


RepresentationTensor/:(F:RepresentationTensor[\[CapitalGamma]_,V1_,\[Beta]c_,V2_,\[Beta]d_,_])\[CirclePlus](G:RepresentationTensor[\[CapitalGamma]_,V3_,\[Beta]c_,V4_,\[Beta]d_,_]):=
(DebugPrint["taking direct sums of tensors..."];RepresentationTensor[\[CapitalGamma],V1\[CirclePlus]V3,\[Beta]c,V2\[CirclePlus]V4,\[Beta]d,With[{\[Lambda]=#},DebugPrint["... weight ",\[Lambda]];{\[Lambda],BlockDiagonalMatrix[F[\[Lambda]],G[\[Lambda]]]}]&/@Weights[\[CapitalGamma],V2\[CirclePlus]V4]])


RepresentationTensor/:Inverse[RepresentationTensor[\[CapitalGamma]_,V1_,\[Beta]1_,V2_,\[Beta]2_,matrices_]]:=RepresentationTensor[\[CapitalGamma],V2,\[Beta]2,V1,\[Beta]1,(PrepareInverse[#[[2]]]&/@matrices;{#[[1]],Inverse[#[[2]]]}&/@matrices)]


QuantumTrace[RepresentationTensor[\[CapitalGamma]_,V_,\[Beta]_,V_,\[Beta]_,matrices_]]:=Simplify[\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(Length[matrices]\)]\(Tr[\(\(MatrixPresentation[\[CapitalGamma]]\)[
\*SubscriptBox[\(K\), \(\[CapitalGamma], \[Rho]\)]]\)[V, \[Beta], matrices[[i, 1]]] . matrices[[i, 2]]]\)\)]


Associator[\[CapitalGamma]_,V1_,V2_,V3_,\[Beta]_]:=RepresentationTensor[\[CapitalGamma],(V1\[CircleTimes]V2)\[CircleTimes]V3,\[Beta],V1\[CircleTimes](V2\[CircleTimes]V3),\[Beta],{#,Associator[\[CapitalGamma],V1,V2,V3,\[Beta],#]}&/@Weights[\[CapitalGamma],V1\[CircleTimes](V2\[CircleTimes]V3)]]


Associator[\[CapitalGamma]_,U_,V_,W_,\[Beta]_,\[Lambda]_]:=LeftAssociator[\[CapitalGamma],U,V,W,\[Lambda]].Inverse[RightAssociator[\[CapitalGamma],U,V,W,\[Lambda]]]


ConstituentWeights[\[CapitalGamma]_,V1_,V2_,V3_,\[Lambda]_]:=Select[Flatten[Outer[{\[Lambda]-#1-#2,#2,#1}&,Weights[\[CapitalGamma],V3],Weights[\[CapitalGamma],V2],1],1],MemberQ[Weights[\[CapitalGamma],V1],#[[1]]]&]


RightAssociatedWeightSpaceInclusion[\[CapitalGamma]_,{U_,V_,W_},{a_,b_,c_}]:=
TensorProductWeightSpaceInclusion[\[CapitalGamma],{U,V\[CircleTimes]W},{a,b+c}].MatrixKroneckerProduct[identityMatrix[WeightMultiplicity[\[CapitalGamma],U,a]],TensorProductWeightSpaceInclusion[\[CapitalGamma],{V,W},{b,c}]]
LeftAssociatedWeightSpaceInclusion[\[CapitalGamma]_,{U_,V_,W_},{a_,b_,c_}]:=
TensorProductWeightSpaceInclusion[\[CapitalGamma],{U\[CircleTimes]V,W},{a+b,c}].MatrixKroneckerProduct[TensorProductWeightSpaceInclusion[\[CapitalGamma],{U,V},{a,b}],identityMatrix[WeightMultiplicity[\[CapitalGamma],W,c]]]


RightAssociator[\[CapitalGamma]_,U_,V_,W_,\[Lambda]_]:=AppendRows@@(RightAssociatedWeightSpaceInclusion[\[CapitalGamma],{U,V,W},#]&/@ConstituentWeights[\[CapitalGamma],U,V,W,\[Lambda]])
LeftAssociator[\[CapitalGamma]_,U_,V_,W_,\[Lambda]_]:=AppendRows@@(LeftAssociatedWeightSpaceInclusion[\[CapitalGamma],{U,V,W},#]&/@ConstituentWeights[\[CapitalGamma],U,V,W,\[Lambda]])


targetIndexWeightPairs[\[CapitalGamma]_][V_DirectSum\[CircleTimes]W_,\[Lambda]_]:=Flatten[Table[With[{\[Mu]=Weights[\[CapitalGamma],W][[j]]},Table[Table[{i,\[Mu]},{WeightMultiplicity[\[CapitalGamma],V[[i]],\[Lambda]-\[Mu]]WeightMultiplicity[\[CapitalGamma],W,\[Mu]]}],{i,1,Length[V]}]],{j,1,Length[Weights[\[CapitalGamma],W]]}],2]


sourceIndexWeightPairs[\[CapitalGamma]_][V_DirectSum\[CircleTimes]W_,\[Lambda]_]:=Flatten[Table[Table[With[{\[Mu]=Weights[\[CapitalGamma],W][[j]]},Table[{i,\[Mu]},{WeightMultiplicity[\[CapitalGamma],V[[i]],\[Lambda]-\[Mu]]WeightMultiplicity[\[CapitalGamma],W,\[Mu]]}]],{j,1,Length[Weights[\[CapitalGamma],W]]}],{i,1,Length[V]}],2]


distributorPermutation[\[CapitalGamma]_][V_DirectSum\[CircleTimes]W_,\[Lambda]_]:=Ordering[Ordering[targetIndexWeightPairs[\[CapitalGamma]][V\[CircleTimes]W,\[Lambda]]][[Ordering[sourceIndexWeightPairs[\[CapitalGamma]][V\[CircleTimes]W,\[Lambda]]]]]]


distributorPermutation[\[CapitalGamma]_][V_DirectSum\[CircleTimes]W_,\[Lambda]_]:=Ordering[sourceIndexWeightPairs[\[CapitalGamma]][V\[CircleTimes]W,\[Lambda]]][[Ordering[Ordering[targetIndexWeightPairs[\[CapitalGamma]][V\[CircleTimes]W,\[Lambda]]]]]]


Distributor[\[CapitalGamma]_][V_DirectSum\[CircleTimes]W_,\[Beta]_]:=RepresentationTensor[\[CapitalGamma],V\[CircleTimes]W,\[Beta],#\[CircleTimes]W&/@V,\[Beta],{#,Matrix[IdentityMatrix[WeightMultiplicity[\[CapitalGamma],V\[CircleTimes]W,#]][[distributorPermutation[\[CapitalGamma]][V\[CircleTimes]W,#]]]]}&/@Weights[\[CapitalGamma],V\[CircleTimes]W]]


BraidingMap[\[CapitalGamma]_,V_\[CircleTimes]W_,\[Beta]_]:=BraidingMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]]=
RepresentationTensor[\[CapitalGamma],W\[CircleTimes]V,\[Beta],V\[CircleTimes]W,\[Beta],{#,SwitchTensorProductWeightSpace[\[CapitalGamma],V\[CircleTimes]W,#].RMatrix[\[CapitalGamma],V,W,\[Beta],#]}&/@Weights[\[CapitalGamma],V\[CircleTimes]W]]


NormalisedBraidingMap[\[CapitalGamma]_,V_\[CircleTimes]V_,\[Beta]_]:=NormalisedBraidingMap[\[CapitalGamma],V\[CircleTimes]V,\[Beta]]=With[{b=BraidingMap[\[CapitalGamma],V\[CircleTimes]V,\[Beta]]},
Simplify[qDimension[\[CapitalGamma]][V]/QuantumTrace[b]]b
]


NormalisedBraidingMap[\[CapitalGamma]_,V_\[CircleTimes]W_,\[Beta]_]:=BraidingMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]]


InverseBraidingMap[\[CapitalGamma]_,V_\[CircleTimes]W_,\[Beta]_]:=InverseBraidingMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]]=Inverse[BraidingMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]]]


InverseNormalisedBraidingMap[\[CapitalGamma]_,V_\[CircleTimes]W_,\[Beta]_]:=InverseNormalisedBraidingMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]]=Inverse[NormalisedBraidingMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]]]


SwitchTensorProductWeightSpace[\[CapitalGamma]_,V_\[CircleTimes]W_,\[Lambda]:{__Integer}]:=\!\(
\*UnderoverscriptBox[\(\[Sum]\), \(i = 1\), \(Length[Weights[\[CapitalGamma], W]]\)]\(TensorProductWeightSpaceInclusion[\[CapitalGamma], {W, V}, {\(Weights[\[CapitalGamma], W]\)[[i]], \[Lambda] - \(Weights[\[CapitalGamma], W]\)[[i]]}] . SwitchTensorProduct[WeightMultiplicity[\[CapitalGamma], V, \[Lambda] - \(Weights[\[CapitalGamma], W]\)[[i]]], WeightMultiplicity[\[CapitalGamma], W, \(Weights[\[CapitalGamma], W]\)[[i]]]] . Transpose[TensorProductWeightSpaceInclusion[\[CapitalGamma], {V, W}, {\[Lambda] - \(Weights[\[CapitalGamma], W]\)[[i]], \(Weights[\[CapitalGamma], W]\)[[i]]}]]\)\)


SwitchTensorProduct[d1_Integer,d2_Integer]:=Matrix[d1 d2,d1 d2,UnitVector[d1 d2,#]&/@Ordering[Flatten[Table[{j,i},{i,1,d1},{j,1,d2}],1]]]


HighWeightVectors[\[CapitalGamma]_][(U_\[CircleTimes]V_)\[CircleTimes]W_,\[Beta]_,\[Lambda]_]:=HighWeightVectors[\[CapitalGamma]][(U\[CircleTimes]V)\[CircleTimes]W,\[Beta],\[Lambda]]=Module[{irreps,decomposition,inclusions,result},
DebugPrintHeld["Calculating ",HighWeightVectors[\[CapitalGamma]][(U\[CircleTimes]V)\[CircleTimes]W,\[Beta],\[Lambda]]," (iterated tensor product)"];
irreps=DecomposeRepresentation[\[CapitalGamma]][U\[CircleTimes]V];
decomposition=DecompositionMap[\[CapitalGamma],U\[CircleTimes]V,\[Beta]]\[CircleTimes]IdentityMap[\[CapitalGamma],W,\[Beta]];
DebugPrintHeld["Calculated decomposition map..."];
inclusions=Table[DirectSumInclusionMap[\[CapitalGamma],irreps,i,\[Beta]]\[CircleTimes]IdentityMap[\[CapitalGamma],W,\[Beta]],{i,1,Length[irreps]}];
result=Flatten[Table[
decomposition[\[Lambda]].inclusions[[i]][\[Lambda]].#&/@HighWeightVectors[\[CapitalGamma]][irreps[[i]]\[CircleTimes]W,\[Beta],\[Lambda]],
{i,1,Length[irreps]}
],1];
DebugPrintHeld["Finished calculating ",HighWeightVectors[\[CapitalGamma]][(U\[CircleTimes]V)\[CircleTimes]W,\[Beta],\[Lambda]]," (iterated tensor product)"];
result
]


weightToString[\[Lambda]:{__Integer}]:=StringDrop[StringJoin@@((ToString[#]<>"$")&/@\[Lambda]),-1]


DecompositionMap[\[CapitalGamma]_,Irrep[\[CapitalGamma]_][\[Lambda]_],\[Beta]_]:=IdentityMap[\[CapitalGamma],Irrep[\[CapitalGamma]][\[Lambda]],\[Beta]]


DecompositionMap[\[CapitalGamma]_,V:DirectSum[Irrep[\[CapitalGamma]_][_]..],\[Beta]_]:=Inverse[PermuteDirectSummands[\[CapitalGamma]][V,\[Beta],Ordering[V][[Ordering[Ordering[SortWeights[\[CapitalGamma]][V]]]]]]]


DecompositionMap[\[CapitalGamma]_,V_\[CircleTimes]W_,\[Beta]_]:=
If[LoadDecompositionMaps[\[CapitalGamma],V\[CircleTimes]W],DecompositionMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]],
Module[{result},
DecompositionMap[\[CapitalGamma],V\[CircleTimes]W,\[Beta]]=result=
(DebugPrint[DecompositionMap, \[CapitalGamma],V,W];RepresentationTensor[\[CapitalGamma],V\[CircleTimes]W,\[Beta],DecomposeRepresentation[\[CapitalGamma]][V\[CircleTimes]W],\[Beta],{#,(DebugPrint[" ... weight ",#];QuantumGroups`MatrixPresentations`Private`DirectSumDecomposition[\[CapitalGamma]][V\[CircleTimes]W,\[Beta],#])}&/@Reverse[Weights[\[CapitalGamma],V\[CircleTimes]W]]]);
PackageDecompositionMaps[\[CapitalGamma]];
result
]
]


DecompositionMap[\[CapitalGamma]_,(U_\[CircleTimes]V_)\[CircleTimes]W_,\[Beta]_]:=
If[LoadDecompositionMaps[\[CapitalGamma],(U\[CircleTimes]V)\[CircleTimes]W],DecompositionMap[\[CapitalGamma],(U\[CircleTimes]V)\[CircleTimes]W,\[Beta]],
Module[{distributor,firstDecomposition,summandDecompositions,disordered,domain,disordering,result},
DecompositionMap[\[CapitalGamma],(U\[CircleTimes]V)\[CircleTimes]W,\[Beta]]=With[{Z=DecomposeRepresentation[\[CapitalGamma]][U\[CircleTimes]V]},
DebugPrintHeld["Beginning ",DecompositionMap[\[CapitalGamma],(U\[CircleTimes]V)\[CircleTimes]W,\[Beta]]];
distributor=Distributor[\[CapitalGamma]][Z\[CircleTimes]W,\[Beta]];
DebugPrint["...prepared distributor"];
firstDecomposition=DecompositionMap[\[CapitalGamma],U\[CircleTimes]V,\[Beta]];
DebugPrint["...prepared first decomposition map"];
summandDecompositions=(DecompositionMap[\[CapitalGamma],#\[CircleTimes]W,\[Beta]]&/@Z);
DebugPrint["...prepared all decomposition maps"];
disordered=(firstDecomposition\[CircleTimes]IdentityMap[\[CapitalGamma],W,\[Beta]]).distributor.summandDecompositions;
DebugPrint["... calculated the composition"];
domain=Domain[disordered];
disordering=Ordering[domain][[Ordering[Ordering[SortWeights[\[CapitalGamma]][domain]]]]];
DebugPrint["... permuting bases"];
result=disordered.PermuteDirectSummands[\[CapitalGamma]][domain[[disordering]],\[Beta],Ordering[disordering]];
DebugPrintHeld["Finished ",DecompositionMap[\[CapitalGamma],(U\[CircleTimes]V)\[CircleTimes]W,\[Beta]]];
result
];
PackageDecompositionMaps[\[CapitalGamma]];
result
]
]


InverseDecompositionMap[\[CapitalGamma]_,V:Irrep[_][_],\[Beta]_]:=Inverse[DecompositionMap[\[CapitalGamma],V,\[Beta]]]
InverseDecompositionMap[\[CapitalGamma]_,V:(_\[CirclePlus]_),\[Beta]_]:=Inverse[DecompositionMap[\[CapitalGamma],V,\[Beta]]]


InverseDecompositionMap[\[CapitalGamma]_,V:(_\[CircleTimes]_),\[Beta]_]:=InverseDecompositionMap[\[CapitalGamma],V,\[Beta]]=
If[LoadDecompositionMaps[\[CapitalGamma],V],InverseDecompositionMap[\[CapitalGamma],V,\[Beta]],
Module[{result},
DebugPrintHeld["Beginning ",InverseDecompositionMap[\[CapitalGamma],V,\[Beta]]];
result=Inverse[DecompositionMap[\[CapitalGamma],V,\[Beta]]];
DebugPrintHeld["Finished ",InverseDecompositionMap[\[CapitalGamma],V,\[Beta]]];
result
]
]


BlockPermutationMatrix[permutation:{__Integer},blocksizes:{__Integer}]:=
BlockMatrix[Table[Table[If[permutation[[j]]==i,identityMatrix[blocksizes[[i]]],ZeroesMatrix[blocksizes[[permutation[[j]]]],blocksizes[[i]]]],{i,1,Length[blocksizes]}],{j,1,Length[permutation]}]]


PermuteDirectSummands[\[CapitalGamma]_][V_DirectSum,\[Beta]_,p_]:=RepresentationTensor[\[CapitalGamma],V[[p]],\[Beta],V,\[Beta],{#,BlockPermutationMatrix[p,Function[{W},WeightMultiplicity[\[CapitalGamma],W,#]]/@(List@@V)]}&/@Weights[\[CapitalGamma],V]]


DirectSumProjectionMap[\[CapitalGamma]_,V_DirectSum,k_,\[Beta]_]:=RepresentationTensor[\[CapitalGamma],V[[k]],\[Beta],V,\[Beta],{#,QuantumGroups`MatrixPresentations`Private`DirectSumProjection[\[CapitalGamma]][V,k,#]}&/@Weights[\[CapitalGamma],V]]
DirectSumInclusionMap[\[CapitalGamma]_,V_DirectSum,k_,\[Beta]_]:=RepresentationTensor[\[CapitalGamma],V,\[Beta],V[[k]],\[Beta],{#,QuantumGroups`MatrixPresentations`Private`DirectSumInclusion[\[CapitalGamma]][V,k,#]}&/@Weights[\[CapitalGamma],V]]


End[];


EndPackage[];
