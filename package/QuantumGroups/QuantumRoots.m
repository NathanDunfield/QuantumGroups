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
    "QuantumGroups`QuantumRoots`",{"QuantumGroups`","QuantumGroups`Utilities`Debugging`",
      "QuantumGroups`MatrixPresentations`","QuantumGroups`Algebra`","QuantumGroups`RootSystems`",
      "QuantumGroups`Representations`","QuantumGroups`BraidAction`",
      "QuantumGroups`WeylGroups`"}];



ExpandQuantumRoot::usage="";

QuantumPositiveRoots::usage="";

QuantumNegativeRoots::usage="";

QuantumRootHeight::usage="";



Begin["`Private`"];

q=Global`q;

\!\(\(ExpandQuantumRoot[\[CapitalGamma]_]\)[\(X\_\(\[CapitalGamma]_, r_\)\^+\)] /; MemberQ[SimpleRoots[\[CapitalGamma]], \(PositiveRoots[\[CapitalGamma]]\)\[LeftDoubleBracket]r\[RightDoubleBracket]] := \(X\_\(\(Position[SimpleRoots[\[CapitalGamma]], \(PositiveRoots[\[CapitalGamma]]\)\[LeftDoubleBracket]r\[RightDoubleBracket]]\)\[LeftDoubleBracket]1, 1\[RightDoubleBracket]\)\^+\)\[IndentingNewLine]
  \(ExpandQuantumRoot[\[CapitalGamma]_]\)[\(X\_\(\[CapitalGamma]_, r_\)\^+\)] := \(\(ExpandQuantumRoot[\[CapitalGamma]]\)[\(X\_\(\[CapitalGamma], r\)\^+\)] = With[{i = LongestWordDecomposition[\[CapitalGamma]]}, \[IndentingNewLine]DebugPrintHeld["\<Calculating \>", \(ExpandQuantumRoot[\[CapitalGamma]]\)[\(X\_\(\[CapitalGamma], r\)\^+\)]]; \[IndentingNewLine]\(BraidAction[\[CapitalGamma]]\)[\(T\_# &\) /@ Take[i, r - 1], \(X\_\(i\[LeftDoubleBracket]r\[RightDoubleBracket]\)\^+\)]]\)\)

\!\(\(ExpandQuantumRoot[\[CapitalGamma]_]\)[\(X\_\(\[CapitalGamma]_, r_\)\^-\)] := \(\(\(ExpandQuantumRoot[\[CapitalGamma]]\)[\(X\_\(\[CapitalGamma], r\)\^+\)] /. q \[Rule] q\^\(-1\)\) /. {\(X\_i_\^+\) \[RuleDelayed] \(X\_i\^-\)}\) /. Z_NonCommutativeMultiply \[RuleDelayed] Reverse[Z]\)

\!\(\[CapitalDelta][A : \((\(X\_\(\[CapitalGamma]_, r_\)\^+\) | \(X\_\(\[CapitalGamma]_, r_\)\^-\))\)] := \[CapitalDelta][\(ExpandQuantumRoot[\[CapitalGamma]]\)[A]]\)

\!\(\(OperatorWeight[\[CapitalGamma]_]\)[\(X\_\(\[CapitalGamma]_, r_\)\^+\)] := \(PositiveRoots[\[CapitalGamma]]\)\[LeftDoubleBracket]r\[RightDoubleBracket]\[IndentingNewLine]
  \(OperatorWeight[\[CapitalGamma]_]\)[\(X\_\(\[CapitalGamma]_, r_\)\^-\)] := \(-\(PositiveRoots[\[CapitalGamma]]\)\[LeftDoubleBracket]r\[RightDoubleBracket]\)\)

\!\(QuantumPositiveRoots[\[CapitalGamma]_] := Table[\(X\_\(\[CapitalGamma], i\)\^+\), {i, 1, Length[LongestWordDecomposition[\[CapitalGamma]]]}]\n
  QuantumNegativeRoots[\[CapitalGamma]_] := Table[\(X\_\(\[CapitalGamma], i\)\^-\), {i, 1, Length[LongestWordDecomposition[\[CapitalGamma]]]}]\)

\!\(\(\(MatrixPresentation[\[CapitalGamma]_]\)[A : \((\(X\_\(\[CapitalGamma]_, r_\)\^+\) | \(X\_\(\[CapitalGamma]_, r_\)\^-\))\)]\)[V_, \[Beta]_, \[Lambda]_] := \(\(\(MatrixPresentation[\[CapitalGamma]]\)[A]\)[V, \[Beta], \[Lambda]] = \(\(MatrixPresentation[\[CapitalGamma]]\)[\(ExpandQuantumRoot[\[CapitalGamma]]\)[A]]\)[V, \[Beta], \[Lambda]]\)\)

\!\(\(QuantumRootHeight[\[CapitalGamma]_]\)[\(X\_\(\[CapitalGamma]_, r_\)\^+\) | \(X\_\(\[CapitalGamma]_, r_\)\^-\)] := Plus @@ \((\(PositiveRoots[\[CapitalGamma]]\)\[LeftDoubleBracket]r\[RightDoubleBracket] . Inverse[SimpleRoots[\[CapitalGamma]]])\)\)

End[];



EndPackage[];