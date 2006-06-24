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
    "QuantumGroups`Braiding`",{"QuantumGroups`","QuantumGroups`Utilities`MatrixWrapper`",
      "QuantumGroups`Utilities`Debugging`","QuantumGroups`Representations`","QuantumGroups`MatrixPresentations`",
      "QuantumGroups`RepresentationTensors`"}];

BR=KnotTheory`BR;



CheckBraidingData::usage="";

BraidingData::usage="";



Begin["`Private`"];

BR[2,{1}][\[CapitalGamma]_,{V1_,V2_},\[Beta]_]:=
  NormalisedBraidingMap[\[CapitalGamma],V1\[CircleTimes]V2,\[Beta]]

BR[n_,{1}][\[CapitalGamma]_,V_List,\[Beta]_]:=
  BR[n,{1}][\[CapitalGamma],V,\[Beta]]=
    Fold[#1\[CircleTimes]#2&,
      NormalisedBraidingMap[\[CapitalGamma],
        V\[LeftDoubleBracket]1\[RightDoubleBracket]\[CircleTimes]V\
\[LeftDoubleBracket]2\[RightDoubleBracket],\[Beta]],
      IdentityMap[\[CapitalGamma],#,\[Beta]]&/@Drop[V,2]]

BR[n_,{k_Integer}][\[CapitalGamma]_,V_List,\[Beta]_]/;1<k<n:=
  BR[n,{k}][\[CapitalGamma],V,\[Beta]]=Module[{ib,as,aib,r},
      DebugPrintHeld["Calculating (what a waste!) ",
        BR[n,{k}][\[CapitalGamma],V,\[Beta]]];
      ib=IdentityMap[\[CapitalGamma],
            TensorProduct@@
              Take[V,k-1],\[Beta]]\[CircleTimes]NormalisedBraidingMap[\
\[CapitalGamma],
            V\[LeftDoubleBracket]
                k\[RightDoubleBracket]\[CircleTimes]V\[LeftDoubleBracket]
                k+1\[RightDoubleBracket],\[Beta]];
      as=Associator[\[CapitalGamma],TensorProduct@@Take[V,k-1],
          V\[LeftDoubleBracket]k\[RightDoubleBracket],
          V\[LeftDoubleBracket]k+1\[RightDoubleBracket],\[Beta]];
      aib=as.ib.Inverse[as];
      r=Fold[#1\[CircleTimes]#2&,aib,
          IdentityMap[\[CapitalGamma],#,\[Beta]]&/@Drop[V,k+1]];
      DebugPrint["... finished calculating, result ",ByteCount[r], " bytes"];
      r
      ]

BR[n_,{k_Integer}][\[CapitalGamma]_,V_List,\[Beta]_]/;0<-k<n:=
  Inverse[BR[n,{-k}][\[CapitalGamma],V,\[Beta]]]

BR[n_,{k_Integer}][\[CapitalGamma]_,V_,\[Beta]_]:=
  BR[n,{k}][\[CapitalGamma],Table[V,{n}],\[Beta]]

BR[n_Integer,{k1_Integer,k2_Integer}][\[CapitalGamma]_,V_,\[Beta]_]:=
  BR[n,{k1}][\[CapitalGamma],V,\[Beta]].BR[n,{k2}][\[CapitalGamma],V,\[Beta]]

BR[n_Integer,ks:{__Integer}][\[CapitalGamma]_,V_,\[Beta]_]:=
  BR[n,Take[ks,Floor[Length[ks]/2]]][\[CapitalGamma],
      V,\[Beta]].BR[n,Drop[ks,Floor[Length[ks]/2]]][\[CapitalGamma],V,\[Beta]]

ChangeBasis[map_,basis_]:=Module[{},
    DebugPrint["ChangeBasis called with ",Dimensions[map]," ",Length[basis]];
    Transpose[
      LinearSolve[Transpose[basis],Together[map.Transpose[basis]],
        Method\[Rule]OneStepRowReduction]]
    ]

\!\(\(BraidingMatrices[\[CapitalGamma]_]\)[V_, n_Integer, \[Lambda]_] := Module[{a, hwv, matrices, inverses}, \[IndentingNewLine]DebugPrintHeld["\<Calculating \>", \(BraidingMatrices[\[CapitalGamma]]\)[V, n, \[Lambda]]]; \[IndentingNewLine]hwv = \(HighWeightVectors[\[CapitalGamma]]\)[V\^\(\[CircleTimes]n\), FundamentalBasis, \[Lambda]]; \[IndentingNewLine]DebugPrint["\<Changing basis ...\>"]; \[IndentingNewLine]matrices = Table[ChangeBasis[MatrixData[\(\(BR[n, {i}]\)[\[CapitalGamma], V, FundamentalBasis]\)[\[Lambda]]], hwv], {i, 1, n - 1}]; \[IndentingNewLine]inverses = MatrixInverse /@ matrices; \[IndentingNewLine]DebugPrint["\<Finished calculating braiding matrices.\>"]; \[IndentingNewLine]Together[{matrices, inverses}]\[IndentingNewLine]]\)

\!\(\(BraidingData[\[CapitalGamma]_]\)[V_, n_Integer] := \(\(BraidingData[\[CapitalGamma]]\)[V, n] = \({\(qDimension[\[CapitalGamma]]\)[\(Irrep[\[CapitalGamma]]\)[#]], \(BraidingMatrices[\[CapitalGamma]]\)[V, n, #]} &\) /@ HighWeights[\[CapitalGamma], V\^\(\[CircleTimes]n\)]\)\)

CheckBraidingData[m:{__?MatrixQ}]:=
  And@@Table[
      ZeroMatrixQ[
        Matrix[Simplify[
            m\[LeftDoubleBracket]i\[RightDoubleBracket].m\[LeftDoubleBracket]
                  i+1\[RightDoubleBracket].m\[LeftDoubleBracket]
                  i\[RightDoubleBracket]-
              m\[LeftDoubleBracket]
                  i+1\[RightDoubleBracket].m\[LeftDoubleBracket]
                  i\[RightDoubleBracket].m\[LeftDoubleBracket]
                  i+1\[RightDoubleBracket]]]],{i,1,Length[m]-1}]

CheckBraidingData[{m:{__?MatrixQ},
      i:{__?MatrixQ}}]:=(Length[m]\[Equal]Length[i])\[And](And@@
        Table[ZeroMatrixQ[
            Matrix[Simplify[
                m\[LeftDoubleBracket]
                      k\[RightDoubleBracket].i\[LeftDoubleBracket]
                      k\[RightDoubleBracket]-
                  IdentityMatrix[
                    Length[m\[LeftDoubleBracket]
                        k\[RightDoubleBracket]]]]]],{k,1,Length[m]}])\[And]
    CheckBraidingData[m]

CheckBraidingData[d:{{_,{{__?MatrixQ},{__?MatrixQ}}}..}]:=
  And@@(CheckBraidingData/@(Last/@d))

CheckBraidingData[\[CapitalGamma]_][V_,k_]:=
  CheckBraidingData[BraidingData[\[CapitalGamma]][V,k]]

End[];



EndPackage[];