(*******************************************************************
This file was generated automatically by the Mathematica front end.
It contains Initialization cells from a Notebook file, which
typically will have the same name as this file except ending in
".nb" instead of ".m".

This file is intended to be loaded into the Mathematica kernel using
the package loading commands Get or Needs.  Doing so is equivalent
to using the Evaluate Initialization Cells menu command in the front
end.

DO NOT EDIT THIS FILE.  This entire file is regenerated
automatically each time the parent Notebook file is saved in the
Mathematica front end.  Any changes you make to this file will be
overwritten.
***********************************************************************)









DeclarePackage[
    "QuantumGroups`Utilities`IntersectSubspaces`",{"IntersectSubspaces"}];

DeclarePackage[
    "QuantumGroups`Utilities`MatrixWrapper`",{"OnesMatrix","ZeroesMatrix","ZeroMatrixQ",
      "NonZeroMatrixQ","Matrix","MatrixData","identityMatrix","KroneckerProduct",
      "BlockDiagonalMatrix","MatrixInverse","InterpolationInverseThreshold"}];

DeclarePackage[
    "QuantumGroups`Utilities`Debugging`",{"DebugEcho","DebugPrint","DebugEvaluate",
      "DebugSet","DebugPrintHeld"}];

DeclarePackage[
    "QuantumGroups`Utilities`DataPackage`",{"ValuesAsString","PackageData","PackageMatrixPresentations",
      "PackageDecompositionMaps","PackageQuantumRoots","PackageRMatrix","PackagePartialRMatrixPresentation",
      "PackageHighWeightVectors","PackageBraidingMatrices"}];

DeclarePackage[
    "QuantumGroups`RootSystems`",{"CartanMatrix","CartanFactors","Rank","KillingForm",
      "SimpleRoots","SimpleReflection","WeylOrbit","PositiveWeightQ","InWeylPolytopeQ",
      "SortWeights","SortWeightMultiplicities","MinisculeWeightQ","MinisculeRepresentationQ",
      "ReflectIntoPositiveWeylChamber","ShortDominantRoots","ShortSimpleRoots",
      "ShortRoots","ShortDominantRootQ","DualCoxeterNumber"}];

DeclarePackage[
    "QuantumGroups`Algebra`",{"X","K","\[ScriptOne]","\[ScriptZero]","\[Rho]",
      "PositiveGenerators","NegativeGenerators","CartanGenerators","Generators",
      "NonCommutativePower","\[CapitalDelta]","\[CapitalDelta]op","OperatorWeight",
      "OperatorLength"}];

DeclarePackage[
    "QuantumGroups`BraidAction`",{"T","BraidAction","BraidRelations",
      "CheckBraidRelations"}];

DeclarePackage[
    "QuantumGroups`QuantumRoots`",{"ExpandQuantumRoot","QuantumPositiveRoots",
      "QuantumNegativeRoots","QuantumRootHeight"}];

DeclarePackage[
    "QuantumGroups`LittelmannPaths`",{"LittelmannPath","LittelmannPathDecomposeRepresentation",
      "LittelmannPathWeightMultiplicities"}];

DeclarePackage[
    "QuantumGroups`WeylGroups`",{"PositiveRoots","LongestWordDecomposition",
      "WeylGroup"}];

DeclarePackage[
    "QuantumGroups`Representations`",{"WeightMultiplicities","WeightMultiplicity",
      "DecomposeRepresentation","Weights","WeightDiameter","PositiveWeights",
      "qDimension"}];

DeclarePackage[
    "QuantumGroups`MatrixPresentations`",{"ChangeOfBasisMatrix","ShortRootBasis",
      "FundamentalBasis","MatrixPresentation","HighWeightVectors","HighWeightVectorQ",
      "AllHighWeightVectors"}];

DeclarePackage[
    "QuantumGroups`AlgebraRelations`",{"Relations","CheckRelations"}];

DeclarePackage[
    "QuantumGroups`RMatrix`",{"RMatrix","CheckRMatrixOppositeCommutes"}];

DeclarePackage[
    "QuantumGroups`RepresentationTensors`",{"RepresentationTensor","Domain","Codomain",
      "DomainBasis","CodomainBasis","Algebra","IdentityMap","ZeroTensorQ","CheckRepresentationTensor",
      "RepresentationTensorErrors","QuantumTrace","Distributor","Associator","BraidingMap",
      "NormalisedBraidingMap","DecompositionMap","PermuteDirectSummands","DirectSumProjectionMap",
      "DirectSumInclusionMap"}];

DeclarePackage[
    "QuantumGroups`Braiding`",{"BraidingData","CheckBraidingData","BR","LoadAllBraidingDataFromWiki",
      "PackageBraidingData","WriteBraidingDataToWiki"}];

Print[
  "Loading QuantumGroups` version 2.0\n",
  "Read more at http://katlas.math.toronto.edu/wiki/QuantumGroups"
  ]

BeginPackage["QuantumGroups`"];

QuantumGroupsDirectory::usage="QuantumGroupsDirectory[] should hopefully return the location the QuantumGroups` package was loaded from.";

{A,B,C,D,E,F,G};

\!\(A1 = A\_1; A2 = A\_2; A3 = A\_3; A4 = A\_4; A5 = A\_5; A6 = A\_6; A7 = A\_7; A8 = A\_8; A9 = A\_9; A10 = A\_10; A11 = A\_11; A12 = A\_12; B2 = B\_2; B3 = B\_3; B4 = B\_4; B5 = B\_5; B6 = B\_6; B7 = B\_7; B8 = B\_8; C3 = C\_3; C4 = C\_4; C5 = C\_5; C6 = C\_6; C7 = C\_7; C8 = C\_8; D4 = D\_4; D5 = D\_5; D6 = D\_6; D7 = D\_7; D8 = D\_8; E6 = E\_6; E7 = E\_7; E8 = E\_8; F4 = F\_4; G2 = G\_2;\)

{Irrep,\[DoubleStruckCapitalC],\[Beta]};

SetAttributes[DirectSum,{Flat,OneIdentity}]

CircleTimes/:Power[V_,CircleTimes[n_]]:=TensorPower[V,n]

TensorProduct=CircleTimes;CirclePlus=DirectSum;

TensorProduct[x:Except[_Integer]]:=x

TensorProduct[a__,b_,c_]:=TensorProduct[TensorProduct[a,b],c]

TensorPower[_,0]:=TensorProduct[]
TensorPower[x_,n_?NaturalQ]:=Fold[TensorProduct,x,Table[x,{n-1}]]

{TensorProduct,TensorPower,DirectSum};

QuantumGroups::loading="Loading precomputed data in `1`."

qInteger::usage="qInteger[n][q] computes the quantum integer n with the variable q.";\

{qFactorial,qBinomial};
qNumberQ::usage="qNumberQ[x] tests if x is a rational function in q. It (fakes) does so simply by replacing q with 3.14159, and testing if the resulting expression is a number.";

UnsortedUnion::usage="UnsortedUnion[list] a list of all the unique elements in list, in the order that they first appear.";

NaturalQ::usage="NaturalNumberQ[n] tests if n is a non-negative integer.";

UnitVector::usage="UnitVector[n,i] returns the i-th n-dimensional unit vector, if i is an integer between 1 and n, and the n-dimensional zero vector otherwise.";

ZeroVector::usage="ZeroVector[n] returns the n-dimensional 0 vector.";

UnitVectorQ::usage="UnitVectorQ[v] tests if v is a unit coordinate vector.";

ZeroVectorQ::usage="ZeroVectorQ[v] tests if v is the zero vector.";

Begin["`Private`"];

QuantumGroupsDirectory[]:=
  QuantumGroupsDirectory[]=
    StringDrop[(File/.Flatten[
            FileInformation[ToFileName[#,"QuantumGroups"]]&/@($Path/.
                  "."\[Rule]Directory[])]),-14]

(*might be dangerous if QuantumGroupsDirectory[] is somehow \
incorrect!*)If[!MemberQ[$Path,QuantumGroupsDirectory[]],
  AppendTo[$Path,QuantumGroupsDirectory[]]]

\!\(\(qInteger[n_Integer]\)[q_] := Sum[q\^k, {k, \(-n\) + 1, n - 1, 2}]\)

qFactorial[n_Integer][q_]:=Expand[Times@@Table[qInteger[i][q],{i,1,n}]]

\!\(\(qBinomial[n_, k_]\)[q_] := \(qFactorial[n]\)[q]\/\(\(qFactorial[n - k]\)[q] \(qFactorial[k]\)[q]\)\)

qNumberQ[x_]:=NumberQ[x/.Global`q\[Rule]3.14159]

UnsortedUnion[x_]:=Module[{f},f[y_]:=(f[y]=Sequence[];y);f/@x]

NaturalQ[n_]:=NonNegative[n]&&IntegerQ[n]

ZeroVector[n_]:=Table[0,{n}]

UnitVector[n_,i_Integer]/;(1\[LessEqual]i\[LessEqual]n):=
  Module[{z=Table[0,{n}]},z\[LeftDoubleBracket]i\[RightDoubleBracket]=1;z]

UnitVector[n_,i_Integer]:=Table[0,{n}]

UnitVectorQ[v_?VectorQ]:=
  Complement[v,{0,1}]\[Equal]{}\[And]Count[v,1]\[Equal]1

ZeroVectorQ[v_?VectorQ]:=Union[v]==={0}\[Or]v\[Equal]{}

End[];

<<QuantumGroups`Utilities`Debugging`
<<QuantumGroups`Utilities`DataPackage`

EndPackage[];