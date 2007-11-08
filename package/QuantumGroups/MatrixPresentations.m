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















BeginPackage[
    "QuantumGroups`MatrixPresentations`",{"LinearAlgebra`MatrixManipulation`",
      "QuantumGroups`","QuantumGroups`Utilities`IntersectSubspaces`","QuantumGroups`Utilities`MatrixWrapper`",
      "QuantumGroups`Utilities`Debugging`","QuantumGroups`RootSystems`","QuantumGroups`Algebra`",
      "QuantumGroups`Representations`"}];



MatrixPresentation::usage="";

HighWeightVectors::usage="";

HighWeightVectorQ;

HighWeights::usage="";

AllHighWeightVectors::usage="";

TensorProductWeightSpaceInclusion;

ChangeOfBasisMatrix;

ShortRootBasis;



Begin["`Private`"];

q=Global`q;

(*MatrixPresentation[\[CapitalGamma]_][A_][
      TensorProduct[V_],\[Beta]_,\[Lambda]_]:=
    MatrixPresentation[\[CapitalGamma]][A][V,\[Beta],\[Lambda]]*)

MatrixPresentation[\[CapitalGamma]_][A_**B_][
      V_,\[Beta]_,\[Lambda]_]/;!MemberQ[
        Weights[\[CapitalGamma],V],\[Lambda]+
          OperatorWeight[\[CapitalGamma]][A**B]]:=
  Matrix[0,WeightMultiplicity[\[CapitalGamma],V,\[Lambda]]]

MatrixPresentation[\[CapitalGamma]_][A_**B_][V_,\[Beta]_,\[Lambda]_]:=
  MatrixPresentation[\[CapitalGamma]][A][
      V,\[Beta],\[Lambda]+
        OperatorWeight[\[CapitalGamma]][
          B]].MatrixPresentation[\[CapitalGamma]][B][V,\[Beta],\[Lambda]]

MatrixPresentation[\[CapitalGamma]_][\[ScriptZero]][V_,_,\[Lambda]_]:=
  With[{m=WeightMultiplicity[\[CapitalGamma],V,\[Lambda]]},ZeroesMatrix[m,m]]

MatrixPresentation[\[CapitalGamma]_][\[ScriptOne]][V_,_,\[Lambda]_]:=
  identityMatrix[WeightMultiplicity[\[CapitalGamma],V,\[Lambda]]]

MatrixPresentation[\[CapitalGamma]_][\[Alpha]_?qNumberQ A_][
    V_,\[Beta]_,\[Lambda]_]:=\[Alpha] MatrixPresentation[\[CapitalGamma]][A][
      V,\[Beta],\[Lambda]]

MatrixPresentation[\[CapitalGamma]_][A_Plus][
      V_,\[Beta]_,\[Lambda]_]/;(Length[
          Union[OperatorWeight[\[CapitalGamma]][#]&/@(List@@A)]]\[Equal]1):=
  MatrixPresentation[\[CapitalGamma]][#][V,\[Beta],\[Lambda]]&/@A

\!\(\(\(MatrixPresentation[\[CapitalGamma]_]\)[K\_i_]\)[V_, _, \[Lambda]_] := \(q\^\(\(CartanFactors[\[CapitalGamma]]\)\[LeftDoubleBracket]i\[RightDoubleBracket] \[Lambda]\[LeftDoubleBracket]i\[RightDoubleBracket]\)\) identityMatrix[WeightMultiplicity[\[CapitalGamma], V, \[Lambda]]]\[IndentingNewLine]
  \(\(MatrixPresentation[\[CapitalGamma]_]\)[K\_i_\^\(-1\)]\)[V_, _, \[Lambda]_] := \(q\^\(\(-\(CartanFactors[\[CapitalGamma]]\)\[LeftDoubleBracket]i\[RightDoubleBracket]\) \[Lambda]\[LeftDoubleBracket]i\[RightDoubleBracket]\)\) identityMatrix[WeightMultiplicity[\[CapitalGamma], V, \[Lambda]]]\)

\!\(\(\(MatrixPresentation[\[CapitalGamma]_]\)[A : \((\(X\__\^+\) | \(X\__\^-\))\)]\)[\(Irrep[\[CapitalGamma]_]\)[\[Mu]_], \[Beta]_, \[Lambda]_] /; \((ZeroVectorQ[\[Mu]] \[And] Length[\[Mu]] \[Equal] Rank[\[CapitalGamma]] \[And] Length[\[Lambda]] \[Equal] Rank[\[CapitalGamma]])\) := If[ZeroVectorQ[\[Lambda]], ZeroesMatrix[0, 1], ZeroesMatrix[WeightMultiplicity[\[CapitalGamma], \(Irrep[\[CapitalGamma]]\)[\[Mu]], \[Lambda] + \(OperatorWeight[\[CapitalGamma]]\)[A]], 0]]\)

\!\(\(\(MatrixPresentation[\[CapitalGamma]_]\)[A : \((\(X\__\^+\) | \(X\__\^-\))\)]\)[V_, \[Beta]_, \[Lambda]_] /; MinusculeRepresentationQ[\[CapitalGamma], V] := OnesMatrix[WeightMultiplicity[\[CapitalGamma], V, \[Lambda] + \(OperatorWeight[\[CapitalGamma]]\)[A]], WeightMultiplicity[\[CapitalGamma], V, \[Lambda]]]\)

MatrixPresentation[\[CapitalGamma]_][A_\[CircleTimes]B_][
      V_\[CircleTimes]W_,\[Beta]_,\[Lambda]_]/;!MemberQ[
        Weights[\[CapitalGamma],V\[CircleTimes]W],\[Lambda]+
          OperatorWeight[\[CapitalGamma]][A\[CircleTimes]B]]:=
  Matrix[0,WeightMultiplicity[\[CapitalGamma],V\[CircleTimes]W,\[Lambda]]]

MatrixPresentation[\[CapitalGamma]_][A_\[CircleTimes]B_][
      V_\[CircleTimes]W_,\[Beta]_,\[Lambda]_]/;
    OperatorLength[\[CapitalGamma],A]>WeightDiameter[\[CapitalGamma],V]:=
  ZeroesMatrix[
    WeightMultiplicity[\[CapitalGamma],
      V\[CircleTimes]W,\[Lambda]+
        OperatorWeight[\[CapitalGamma]][A\[CircleTimes]B]],
    WeightMultiplicity[\[CapitalGamma],V\[CircleTimes]W,\[Lambda]]]
MatrixPresentation[\[CapitalGamma]_][A_\[CircleTimes]B_][
      V_\[CircleTimes]W_,\[Beta]_,\[Lambda]_]/;
    OperatorLength[\[CapitalGamma],B]>WeightDiameter[\[CapitalGamma],W]:=
  ZeroesMatrix[
    WeightMultiplicity[\[CapitalGamma],
      V\[CircleTimes]W,\[Lambda]+
        OperatorWeight[\[CapitalGamma]][A\[CircleTimes]B]],
    WeightMultiplicity[\[CapitalGamma],V\[CircleTimes]W,\[Lambda]]]

MatrixPresentation[\[CapitalGamma]_][A_\[CircleTimes]B_][
    V_\[CircleTimes]W_,\[Beta]_,\[Lambda]_]:=
  AppendRows@@Table[
      TensorProductWeightSpaceInclusion[\[CapitalGamma],{V,
            W},{\[Lambda]+OperatorWeight[\[CapitalGamma]][A]-
              Weights[\[CapitalGamma],W]\[LeftDoubleBracket]
                i\[RightDoubleBracket],
            Weights[\[CapitalGamma],W]\[LeftDoubleBracket]
                i\[RightDoubleBracket]+
              OperatorWeight[\[CapitalGamma]][B]}].Together[
          KroneckerProduct[
            MatrixPresentation[\[CapitalGamma]][A][
              V,\[Beta],\[Lambda]-
                Weights[\[CapitalGamma],W]\[LeftDoubleBracket]
                  i\[RightDoubleBracket]],
            MatrixPresentation[\[CapitalGamma]][B][W,\[Beta],
              Weights[\[CapitalGamma],W]\[LeftDoubleBracket]
                i\[RightDoubleBracket]]]],
      {i,1,Length[Weights[\[CapitalGamma],W]]}]

MatrixPresentation[\[CapitalGamma]_][A_][
      V_\[CircleTimes]W_,\[Beta]_,\[Lambda]_]/;!MemberQ[
        Weights[\[CapitalGamma],V\[CircleTimes]W],\[Lambda]+
          OperatorWeight[\[CapitalGamma]][\[CapitalDelta][A]]]:=
  Matrix[0,WeightMultiplicity[\[CapitalGamma],V\[CircleTimes]W,\[Lambda]]]

MatrixPresentation[\[CapitalGamma]_][A_][
    V_\[CircleTimes]W_,\[Beta]_,\[Lambda]_]:=
  MatrixPresentation[\[CapitalGamma]][\[CapitalDelta][A]][
    V\[CircleTimes]W,\[Beta],\[Lambda]]



MatrixPresentation[\[CapitalGamma]_][A_][V_DirectSum,\[Beta]_,\[Lambda]_]:=
  BlockDiagonalMatrix@@(MatrixPresentation[\[CapitalGamma]][
              A][#,\[Beta],\[Lambda]]&/@(List@@V))

PadWithZeroRows[m_Matrix,initial_?NaturalQ,total_?NaturalQ]:=
  With[{rows = Dimensions[m]\[LeftDoubleBracket]1\[RightDoubleBracket],
      cols=Dimensions[m]\[LeftDoubleBracket]2\[RightDoubleBracket]},
    Matrix[total,cols,
      Join[ZeroMatrix[initial,cols],MatrixData[m],
        ZeroMatrix[total-initial-rows,cols]]]]

WeightMultiplicityComponents[\[CapitalGamma]_,V1_,V2_,\[Lambda]_]:=
  Table[WeightMultiplicity[\[CapitalGamma],
        V1,\[Lambda]-
          Weights[\[CapitalGamma],V2]\[LeftDoubleBracket]
            i\[RightDoubleBracket]]WeightMultiplicity[\[CapitalGamma],V2,
        Weights[\[CapitalGamma],V2]\[LeftDoubleBracket]
          i\[RightDoubleBracket]],{i,1,Length[Weights[\[CapitalGamma],V2]]}]

WeightMultiplicityPartialSums[\[CapitalGamma]_,V1_,V2_,\[Lambda]_]:=
  Drop[FoldList[Plus,0,
      WeightMultiplicityComponents[\[CapitalGamma],V1,V2,\[Lambda]]],-1]



TensorProductWeightSpaceInclusion[\[CapitalGamma]_,{V_,
      W_},{\[Lambda]_,\[Mu]_}]:=
  With[{m0=WeightMultiplicity[\[CapitalGamma],
            V,\[Lambda]]WeightMultiplicity[\[CapitalGamma],W,\[Mu]],
      m1=WeightMultiplicity[\[CapitalGamma],V\[CircleTimes]W,\[Lambda]+\[Mu]],
      pos=Position[Weights[\[CapitalGamma],W],\[Mu]]},
    If[pos\[Equal]{}\[Or]m0\[Equal]0,
      Matrix[m1,m0],
      PadWithZeroRows[identityMatrix[m0],
        WeightMultiplicityPartialSums[\[CapitalGamma],V,
            W,\[Lambda]+\[Mu]]\[LeftDoubleBracket]
          pos\[LeftDoubleBracket]1,
            1\[RightDoubleBracket]\[RightDoubleBracket],m1]
      ]
    ]

\!\(HighWeightVectorQ[\[CapitalGamma]_, V_, b_, \[Lambda]_] := \((And @@ Table[ZeroVectorQ[Together[\(\(MatrixPresentation[\[CapitalGamma]]\)[\(X\_i\^+\)]\)[V, b, \[Lambda]] . #]], {i, 1, Rank[\[CapitalGamma]]}])\) &\)

HighWeightVectors[\[CapitalGamma]_][
    Irrep[\[CapitalGamma]_][\[Lambda]_],_,\[Lambda]_]:={{1}}
HighWeightVectors[\[CapitalGamma]_][
    Irrep[\[CapitalGamma]_][\[Lambda]_],_,_]:={}







\!\(\(HighWeightVectors[\[CapitalGamma]_]\)[V_, b_, \[Lambda]_] := \(\(HighWeightVectors[\[CapitalGamma]]\)[V, b, \[Lambda]] = Module[{T, r}, \[IndentingNewLine]T = AppendColumns @@ Table[\(\(MatrixPresentation[\[CapitalGamma]]\)[\(X\_i\^+\)]\)[V, b, \[Lambda]], {i, 1, Rank[\[CapitalGamma]]}]; \[IndentingNewLine]If[\(Dimensions[T]\)\[LeftDoubleBracket]1\[RightDoubleBracket] \[Equal] 0, Return[IdentityMatrix[WeightMultiplicity[\[CapitalGamma], V, \[Lambda]]]]]; \[IndentingNewLine]DebugPrint["\<About to find the null space of a \>", \(Dimensions[T]\)\[LeftDoubleBracket]2\[RightDoubleBracket], "\< by \>", \(Dimensions[T]\)\[LeftDoubleBracket]2\[RightDoubleBracket], "\< matrix.\>"]; \[IndentingNewLine]r = Together[NullSpace[T, Method \[Rule] OneStepRowReduction]]; \[IndentingNewLine]DebugPrint["\<Finished finding null space.\>"]; \[IndentingNewLine]r\[IndentingNewLine]]\)\)



AllHighWeightVectors[\[CapitalGamma]_][V_,\[Beta]_]:=
  Flatten[Function[{\[Lambda]},{\[Lambda],#}&/@
          HighWeightVectors[\[CapitalGamma]][V,\[Beta],\[Lambda]]]/@
      PositiveWeights[\[CapitalGamma],V],1]

HighWeights[\[CapitalGamma]_,V_]:=
  SortWeights[\[CapitalGamma]][
    Union[DecomposeRepresentation[\[CapitalGamma]][
            V]/.{DirectSum[v__]\[RuleDelayed]{v},
            i:Irrep[_][_]\[RuleDelayed]{i}}/.Irrep[\[CapitalGamma]][\[Lambda]_\
]\[RuleDelayed]\[Lambda]]]

AddOneVectorToSpanningSet[{},v_?VectorQ]:=If[ZeroVectorQ[v],{},{v}]

AddOneVectorToSpanningSet[m_?MatrixQ,v_?VectorQ]:=
  If[MatrixRank[m~Join~{v}]\[Equal]Length[m],m,m~Join~{v}]

SpanningSet[{}]:={};

SpanningSet[m_?MatrixQ]:=(Global`spanningSetArgument=m;
    Fold[AddOneVectorToSpanningSet,{},m])

SpanningSet[Matrix[_,_,data_]]:=SpanningSet[data]

LazyAddOneVectorToSpanningSet[{},v_?VectorQ]:=If[ZeroVectorQ[v],{},{v}]

LazyAddOneVectorToSpanningSet[m_?MatrixQ,v_?VectorQ]:=
  If[MatrixRank[m~Join~{v}/.q\[Rule]1]\[Equal]Length[m],m,m~Join~{v}]

LazySpanningSet[{}]:={};

LazySpanningSet[m_?MatrixQ]:=(Global`spanningSetArgument=m;
    Fold[LazyAddOneVectorToSpanningSet,{},m])

LazySpanningSet[Matrix[_,_,data_]]:=LazySpanningSet[data]

CarefulSpanningSetNewTime=CarefulSpanningSetOldTime=0;

CarefulSpanningSet[m_]:=Module[{tnew,rnew,told,rold},
    {tnew,rnew}=AbsoluteTiming[LazySpanningSet[m]];
    {told,rold}=AbsoluteTiming[SpanningSet[m]];
    If[rnew=!=rold,Print["LazySpanningSet failed!"]];
    CarefulSpanningSetNewTime+=tnew;
    CarefulSpanningSetOldTime+=told;
    rnew
    ]

SubIrrepWeightBasis[\[CapitalGamma]_][V_,\[Beta]_,\[Lambda]_,
    v_,\[Lambda]_]:={v}

\!\(\(SubIrrepWeightBasis[\[CapitalGamma]_]\)[V_, \[Beta]_, \[Lambda]_, v_, \[Mu]_] /; InWeylPolytopeQ[\[CapitalGamma], \[Lambda], \[Mu]] := \(\(SubIrrepWeightBasis[\[CapitalGamma]]\)[V, \[Beta], \[Lambda], v, \[Mu]] = Module[{c, r}, \[IndentingNewLine]DebugPrintHeld["\<Calculating \>", \(SubIrrepWeightBasis[\[CapitalGamma]]\)[V, \[Beta], \[Lambda], v, \[Mu]]]; \[IndentingNewLine]c = Join @@ Table[\(\(\(MatrixPresentation[\[CapitalGamma]]\)[\(X\_i\^-\)]\)[V, \[Beta], \[Mu] - \(OperatorWeight[\[CapitalGamma]]\)[\(X\_i\^-\)]] . # &\) /@ \(SubIrrepWeightBasis[\[CapitalGamma]]\)[V, \[Beta], \[Lambda], v, \[Mu] - \(OperatorWeight[\[CapitalGamma]]\)[\(X\_i\^-\)]], {i, 1, Rank[\[CapitalGamma]]}]; \[IndentingNewLine]DebugPrint["\< ... prepared spanning set.\>"]; \[IndentingNewLine]r = LazySpanningSet[Together[c]]; \[IndentingNewLine]DebugPrintHeld["\<Finished calculating \>", \(SubIrrepWeightBasis[\[CapitalGamma]]\)[V, \[Beta], \[Lambda], v, \[Mu]]]; \[IndentingNewLine]r\[IndentingNewLine]]\)\)

SubIrrepWeightBasis[\[CapitalGamma]_][V_,\[Beta]_,\[Lambda]_,v_,\[Mu]_]:={}

FullSubIrrepWeightBasis[\[CapitalGamma]_][V_,\[Beta]_,\[Mu]_]:=
  Flatten[SubIrrepWeightBasis[\[CapitalGamma]][
          V,\[Beta],#\[LeftDoubleBracket]1\[RightDoubleBracket],#\
\[LeftDoubleBracket]2\[RightDoubleBracket],\[Mu]]&/@
      AllHighWeightVectors[\[CapitalGamma]][V,\[Beta]],1]

DirectSumDecomposition[\[CapitalGamma]_][V_,\[Beta]_,\[Lambda]_]:=
  DirectSumDecomposition[\[CapitalGamma]][V,\[Beta],\[Lambda]]=
    With[{data=FullSubIrrepWeightBasis[\[CapitalGamma]][V,\[Beta],\[Lambda]],
        d=WeightMultiplicity[\[CapitalGamma],V,\[Lambda]]},
      If[Length[data]\[NotEqual]d,
        Print["Direct sum decomposition failed, in weight space ",\[Lambda],
          " of ", V];Return[$Failed]];
      Transpose[Matrix[Length[data],d,data]]
      ]

InverseDirectSumDecomposition[\[CapitalGamma]_][V_,\[Beta]_,\[Lambda]_]:=
  InverseDirectSumDecomposition[\[CapitalGamma]][V,\[Beta],\[Lambda]]=
    Inverse[DirectSumDecomposition[\[CapitalGamma]][V,\[Beta],\[Lambda]]]

DirectSumProjection[\[CapitalGamma]_][V_DirectSum,index_Integer,\[Lambda]_]:=
  With[{a=WeightMultiplicity[\[CapitalGamma],Take[V,index-1],\[Lambda]],
      b=WeightMultiplicity[\[CapitalGamma],
          V\[LeftDoubleBracket]index\[RightDoubleBracket],\[Lambda]],
      c=WeightMultiplicity[\[CapitalGamma],Drop[V,index],\[Lambda]]},
    AppendRows[ZeroesMatrix[b,a],identityMatrix[b],ZeroesMatrix[b,c]]
    ]

DirectSumProjection[\[CapitalGamma]_][V_DirectSum,
    indexes:{___Integer},\[Lambda]_]:=
  AppendColumns@@(DirectSumProjection[\[CapitalGamma]][V,#,\[Lambda]]&/@
        indexes)

DirectSumInclusion[\[CapitalGamma]_][V_DirectSum,index_,\[Lambda]_]:=
  Transpose[DirectSumProjection[\[CapitalGamma]][V,index,\[Lambda]]]

ChangeOfBasisMatrix[\[CapitalGamma]_][V:Irrep[\[CapitalGamma]_][_],\[Beta]_,
    FundamentalBasis,\[Lambda]_]:=
  DirectSumDecomposition[\[CapitalGamma]][V,\[Beta],\[Lambda]]
ChangeOfBasisMatrix[\[CapitalGamma]_][V:Irrep[\[CapitalGamma]_][_],
    FundamentalBasis,\[Beta]_,\[Lambda]_]:=
  Inverse[ChangeOfBasisMatrix[\[CapitalGamma]][V,\[Beta],
      FundamentalBasis,\[Lambda]]]
ChangeOfBasisMatrix[\[CapitalGamma]_][V_,\[Beta]_,\[Beta]_,\[Lambda]_]:=
  identityMatrix[WeightMultiplicity[\[CapitalGamma],V,\[Lambda]]]

\!\(\(\(MatrixPresentation[\[CapitalGamma]_]\)[A : \((\(X\__\^+\) | \(X\__\^-\))\)]\)[\(Irrep[\[CapitalGamma]_]\)[\[Lambda]_], ShortRootBasis, \[Kappa]_] /; UnitVectorQ[\[Lambda]] \[And] ShortDominantRootQ[\[CapitalGamma], \[Lambda]] := \(\(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[\(Irrep[\[CapitalGamma]]\)[\[Lambda]], ShortRootBasis, \[Mu]] = Module[{x, h, s, d, kf, action, basis}, \[IndentingNewLine]s\_i_ := \(SimpleRoots[\[CapitalGamma]]\)\[LeftDoubleBracket]i\[RightDoubleBracket]; \[IndentingNewLine]d\_i_ := \(CartanFactors[\[CapitalGamma]]\)\[LeftDoubleBracket]i\[RightDoubleBracket]; \[IndentingNewLine]kf = KillingForm[\[CapitalGamma]]; \[IndentingNewLine]\(action[\(X\_i_\^+\)]\)[x\_\[Mu]_] := Switch[2  kf[\[Mu], s\_i]\/kf[s\_i, s\_i], 2 | 0 | 1, 0, \(-1\), x\_\(\[Mu] + s\_i\), \(-2\), h\_\(s\_i\)]; \[IndentingNewLine]\(action[\(X\_i_\^-\)]\)[x\_\[Mu]_] := Switch[2  kf[\[Mu], s\_i]\/kf[s\_i, s\_i], \(-2\) | 0 | \(-1\), 0, 1, x\_\(\[Mu] - s\_i\), 2, h\_\(s\_i\)]; \[IndentingNewLine]\(action[\(X\_i_\^+\)]\)[h\_\[Mu]_] := Switch[2  kf[\[Mu], s\_i]\/kf[s\_i, s\_i], 2, \(qInteger[2]\)[q\^d\_i], \(-1\), 1, _, 0] x\_\(s\_i\); \[IndentingNewLine]\(action[\(X\_i_\^-\)]\)[h\_\[Mu]_] := Switch[2  kf[\[Mu], s\_i]\/kf[s\_i, s\_i], 2, \(qInteger[2]\)[q\^d\_i], \(-1\), 1, _, 0] x\_\(-s\_i\); \[IndentingNewLine]basis[\[Mu]_] := If[MemberQ[ShortRoots[\[CapitalGamma]], \[Mu]], {x\_\[Mu]}, \[IndentingNewLine]If[ZeroVectorQ[\[Mu]], \(h\_# &\) /@ ShortSimpleRoots[\[CapitalGamma]], {}]]; \[IndentingNewLine]With[{\[Beta]1 = basis[\[Kappa]], \[Beta]2 = basis[\[Kappa] + \(OperatorWeight[\[CapitalGamma]]\)[A]]}, \[IndentingNewLine]Matrix[Length[\[Beta]2], Length[\[Beta]1], \(Coefficient[action[A] /@ \[Beta]1, #] &\) /@ \[Beta]2]\[IndentingNewLine]]\[IndentingNewLine]]\)\)



\!\(\(\(MatrixPresentation[\[CapitalGamma]_]\)[A : \((\(X\__\^+\) | \(X\__\^-\))\)]\)[V : \(Irrep[\[CapitalGamma]_]\)[\[Lambda]_], FundamentalBasis, \[Kappa]_] /; UnitVectorQ[\[Lambda]] \[And] ShortDominantRootQ[\[CapitalGamma], \[Lambda]] := \(\(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[V, FundamentalBasis, \[Kappa]] = \(ChangeOfBasisMatrix[\[CapitalGamma]]\)[V, FundamentalBasis, ShortRootBasis, \[Kappa] + \(OperatorWeight[\[CapitalGamma]]\)[A]] . \(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[V, ShortRootBasis, \[Kappa]] . \(ChangeOfBasisMatrix[\[CapitalGamma]]\)[V, ShortRootBasis, FundamentalBasis, \[Kappa]]\)\)

\!\(\(IrrepContainmentRules = {\[IndentingNewLine]\(Irrep[B\_n_]\)[\[Lambda]_] /; MemberQ[Take[IdentityMatrix[n], {2, \(-2\)}], \[Lambda]] \[RuleDelayed] \(Irrep[B\_n]\)[RotateLeft[\[Lambda]]]\[CircleTimes]\(Irrep[B\_n]\)[UnitVector[n, 1]], \[IndentingNewLine]\(Irrep[C\_n_]\)[\[Lambda]_] /; MemberQ[Drop[IdentityMatrix[n], 2], \[Lambda]] \[RuleDelayed] \(Irrep[C\_n]\)[RotateLeft[\[Lambda]]]\[CircleTimes]\(Irrep[C\_n]\)[UnitVector[n, 1]], \[IndentingNewLine]\(Irrep[D\_n_]\)[\[Lambda]_] /; MemberQ[Take[IdentityMatrix[n], {3, \(-3\)}], \[Lambda]] \[RuleDelayed] If[EvenQ[n - \(Position[IdentityMatrix[n], \[Lambda]]\)\[LeftDoubleBracket]1, 1\[RightDoubleBracket]], \(Irrep[D\_n]\)[UnitVector[n, n]]\[CircleTimes]\(Irrep[D\_n]\)[UnitVector[n, n]], \(Irrep[D\_n]\)[UnitVector[n, n - 1]]\[CircleTimes]\(Irrep[D\_n]\)[UnitVector[n, n]]], \[IndentingNewLine]\(Irrep[G\_2]\)[{0, 1}] \[Rule] \(Irrep[G\_2]\)[{1, 0}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[F\_4]\)[{1, 0, 0, 0}] \[Rule] \(Irrep[F\_4]\)[{0, 0, 0, 1}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[F\_4]\)[{0, 0, 1, 0}] \[Rule] \(Irrep[F\_4]\)[{0, 0, 0, 1}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[F\_4]\)[{0, 1, 0, 0}] \[Rule] \(Irrep[F\_4]\)[{1, 0, 0, 0}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[E\_6]\)[{0, 0, 1, 0, 0, 0}] \[Rule] \(Irrep[E\_6]\)[{1, 0, 0, 0, 0, 0}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[E\_6]\)[{0, 1, 0, 0, 0, 0}] \[Rule] \(Irrep[E\_6]\)[{1, 0, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_6]\)[{0, 0, 0, 0, 0, 1}], \[IndentingNewLine]\(Irrep[E\_6]\)[{0, 0, 0, 0, 1, 0}] \[Rule] \(Irrep[E\_6]\)[{0, 0, 0, 0, 0, 1}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[E\_6]\)[{0, 0, 0, 1, 0, 0}] \[Rule] \(Irrep[E\_6]\)[{1, 0, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_6]\)[{0, 0, 1, 0, 0, 0}], \[IndentingNewLine]\(Irrep[\[ExponentialE]\_7]\)[{0, 0, 1, 0, 0, 0, 0}] \[Rule] \(Irrep[E\_7]\)[{1, 0, 0, 0, 0, 0, 0}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[\[ExponentialE]\_7]\)[{0, 1, 0, 0, 0, 0, 0}] \[Rule] \(Irrep[E\_7]\)[{1, 0, 0, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_7]\)[{0, 0, 0, 0, 0, 0, 1}], \[IndentingNewLine]\(Irrep[\[ExponentialE]\_7]\)[{0, 0, 0, 0, 0, 1, 0}] \[Rule] \(Irrep[E\_7]\)[{1, 0, 0, 0, 0, 0, 0}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[\[ExponentialE]\_7]\)[{0, 0, 0, 0, 1, 0, 0}] \[Rule] \(Irrep[E\_7]\)[{1, 0, 0, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_7]\)[{0, 1, 0, 0, 0, 0, 0}], \[IndentingNewLine]\(Irrep[\[ExponentialE]\_7]\)[{0, 0, 0, 1, 0, 0, 0}] \[Rule] \(Irrep[E\_7]\)[{0, 0, 1, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_7]\)[{1, 0, 0, 0, 0, 0, 0}], \[IndentingNewLine]\(Irrep[\[ExponentialE]\_8]\)[{0, 0, 0, 0, 0, 0, 1, 0}] -> \(Irrep[E\_8]\)[{0, 0, 0, 0, 0, 0, 0, 1}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[\[ExponentialE]\_8]\)[{1, 0, 0, 0, 0, 0, 0, 0}] -> \(Irrep[E\_8]\)[{0, 0, 0, 0, 0, 0, 0, 1}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[\[ExponentialE]\_8]\)[{0, 1, 0, 0, 0, 0, 0, 0}] -> \(Irrep[E\_8]\)[{1, 0, 0, 0, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_8]\)[{0, 0, 0, 0, 0, 0, 0, 1}], \[IndentingNewLine]\(Irrep[\[ExponentialE]\_8]\)[{0, 0, 0, 0, 0, 1, 0, 0}] -> \(Irrep[E\_8]\)[{1, 0, 0, 0, 0, 0, 0, 0}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[\[ExponentialE]\_8]\)[{0, 0, 1, 0, 0, 0, 0, 0}] -> \(Irrep[E\_8]\)[{1, 0, 0, 0, 0, 0, 0, 0}]\^\(\[CircleTimes]2\), \[IndentingNewLine]\(Irrep[\[ExponentialE]\_8]\)[{0, 0, 0, 0, 1, 0, 0, 0}] -> \(Irrep[E\_8]\)[{0, 1, 0, 0, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_8]\)[{1, 0, 0, 0, 0, 0, 0, 0}], \[IndentingNewLine]\(Irrep[\[ExponentialE]\_8]\)[{0, 0, 0, 1, 0, 0, 0, 0}] -> \(Irrep[E\_8]\)[{0, 0, 1, 0, 0, 0, 0, 0}]\[CircleTimes]\(Irrep[E\_8]\)[{1, 0, 0, 0, 0, 0, 0, 0}], \[IndentingNewLine]\(Irrep[\[CapitalGamma]_]\)[\[Lambda]_] /; \(! UnitVectorQ[\[Lambda]]\) \[RuleDelayed] Module[{n = Rank[\[CapitalGamma]], pos, \[Mu]}, pos = \(Position[\[Lambda], _?\((# \[NotEqual] 0 &)\)]\)\[LeftDoubleBracket]1, 1\[RightDoubleBracket]; \[Mu] = UnitVector[n, pos]; \[IndentingNewLine]\(Irrep[\[CapitalGamma]]\)[\[Lambda] - \[Mu]]\[CircleTimes]\(Irrep[\[CapitalGamma]]\)[\[Mu]]]\[IndentingNewLine]};\)\)

\!\(\(\(MatrixPresentation[\[CapitalGamma]_]\)[A : \((\(X\__\^+\) | \(X\__\^-\))\)]\)[V : \(Irrep[\[CapitalGamma]_]\)[\[Mu]_], FundamentalBasis, \[Lambda]_] /; \[Not] ZeroVectorQ[\[Mu]] \[And] \[Not] UnitVectorQ[\[Mu]] \[Or] \((\[Not] ShortDominantRootQ[\[CapitalGamma], \[Mu]] \[And] \[Not] MinusculeRepresentationQ[\[CapitalGamma], V])\) := \(\(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[V, FundamentalBasis, \[Lambda]] = Module[{W = V /. IrrepContainmentRules, p, result}, \[IndentingNewLine]DebugPrintHeld["\<Calculating \>", \(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[V, FundamentalBasis, \[Lambda]], \ "\< by looking at \>", V, "\< as a subrep of \>", Evaluate[W]]; \[IndentingNewLine]If[W \[Equal] V, Print["\<Warning, couldn't work out how to find matrix presentations for \>", V]; Return[$Failed]]; \[IndentingNewLine]p = \(Position[\(DecomposeRepresentation[\[CapitalGamma]]\)[W], V]\)\[LeftDoubleBracket]1, 1\[RightDoubleBracket]; \[IndentingNewLine]result = Simplify[Together[\(DirectSumProjection[\[CapitalGamma]]\)[\(DecomposeRepresentation[\[CapitalGamma]]\)[W], p, \[Lambda] + \(OperatorWeight[\[CapitalGamma]]\)[A]] . \(InverseDirectSumDecomposition[\[CapitalGamma]]\)[W, FundamentalBasis, \[Lambda] + \(OperatorWeight[\[CapitalGamma]]\)[A]] . \(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[W, FundamentalBasis, \[Lambda]] . \(DirectSumDecomposition[\[CapitalGamma]]\)[W, FundamentalBasis, \[Lambda]] . \(DirectSumInclusion[\[CapitalGamma]]\)[\(DecomposeRepresentation[\[CapitalGamma]]\)[W], p, \[Lambda]]]]; \[IndentingNewLine]DebugPrintHeld["\<Finished calculating \>", \(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[V, FundamentalBasis, \[Lambda]]]; \[IndentingNewLine]result\[IndentingNewLine]]\)\)

End[];



EndPackage[];



















































































