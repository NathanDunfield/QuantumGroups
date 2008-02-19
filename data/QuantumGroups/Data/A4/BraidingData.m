BeginPackage["QuantumGroups`Data`A4`BraidingData`", {"QuantumGroups`", "QuantumGroups`Braiding`"}]
Message[QuantumGroups::loading,"QuantumGroups`Data`A4`BraidingData`"]

Begin["`Private`"]
q=Global`q;
BraidingData[Subscript[A, 4]][Irrep[Subscript[A, 4]][{0, 0, 0, 1}], 3]:={{5 + q^(-12) + q^(-10) + 2/q^8 + 3/q^6 + 4/q^4 + 4/q^2 + 4*q^2 + 4*q^4 + 3*q^6 + 2*q^8 + q^10 + q^12, {{{{Power[q, -4]}}, {{Power[q, -4]}}}, {{{Power[q, 4]}}, {{Power[q, 4]}}}}}, {6 + q^(-10) + 2/q^8 + 3/q^6 + 5/q^4 + 6/q^2 + 6*q^2 + 5*q^4 + 3*q^6 + 2*q^8 + q^10, {{{{Power[q, -4], 0}, {0, -q^(-6)}}, {{-(1/(q^6*(1 + q^2))), (1 + q^2 + q^4)/(q^5*(1 + q^2)^2)}, {Power[q, -5], 1/(q^2*(1 + q^2))}}}, {{{Power[q, 4], 0}, {0, -q^6}}, {{-(q^8/(1 + q^2)), (q^5 + q^7 + q^9)/(1 + q^2)^2}, {Power[q, 5], q^4/(1 + q^2)}}}}}, {2 + q^(-6) + q^(-4) + 2/q^2 + 2*q^2 + q^4 + q^6, {{{{-q^(-6)}}, {{-q^(-6)}}}, {{{-q^6}}, {{-q^6}}}}}}
BraidingData[Subscript[A, 4]][Irrep[Subscript[A, 4]][{0, 1, 0, 0}], 2]:={{8 + q^(-12) + q^(-10) + 3/q^8 + 4/q^6 + 6/q^4 + 6/q^2 + 6*q^2 + 6*q^4 + 4*q^6 + 3*q^8 + q^10 + q^12, {{{{Power[q, -6]}}}, {{{Power[q, 6]}}}}}, {7 + q^(-10) + 2/q^8 + 4/q^6 + 5/q^4 + 7/q^2 + 7*q^2 + 5*q^4 + 4*q^6 + 2*q^8 + q^10, {{{{-q^(-8)}}}, {{{-q^8}}}}}, {1 + q^(-4) + q^(-2) + q^2 + q^4, {{{{Power[q, -12]}}}, {{{Power[q, 12]}}}}}}
BraidingData[Subscript[A, 4]][Irrep[Subscript[A, 4]][{0, 1, 0, 0}], 3]:={{19 + q^(-18) + q^(-16) + 3/q^14 + 5/q^12 + 8/q^10 + 10/q^8 + 15/q^6 + 16/q^4 + 19/q^2 + 19*q^2 + 16*q^4 + 15*q^6 + 10*q^8 + 8*q^10 + 5*q^12 + 3*q^14 + q^16 + q^18, {{{{Power[q, -6]}}, {{Power[q, -6]}}}, {{{Power[q, 6]}}, {{Power[q, 6]}}}}}, {34 + q^(-16) + 3/q^14 + 6/q^12 + 11/q^10 + 17/q^8 + 23/q^6 + 29/q^4 + 33/q^2 + 33*q^2 + 29*q^4 + 23*q^6 + 17*q^8 + 11*q^10 + 6*q^12 + 3*q^14 + q^16, {{{{Power[q, -6], 0}, {0, -q^(-8)}}, {{-(1/(q^8*(1 + q^2))), (1 + q^2 + q^4)/(q^7*(1 + q^2)^2)}, {Power[q, -7], 1/(q^4*(1 + q^2))}}}, {{{Power[q, 6], 0}, {0, -q^8}}, {{-(q^10/(1 + q^2)), (q^7*(1 + q^2 + q^4))/(1 + q^2)^2}, {Power[q, 7], q^6/(1 + q^2)}}}}}, {10 + q^(-12) + 2/q^10 + 4/q^8 + 6/q^6 + 8/q^4 + 9/q^2 + 9*q^2 + 8*q^4 + 6*q^6 + 4*q^8 + 2*q^10 + q^12, {{{{-q^(-8)}}, {{-q^(-8)}}}, {{{-q^8}}, {{-q^8}}}}}, {8 + q^(-12) + q^(-10) + 3/q^8 + 4/q^6 + 6/q^4 + 6/q^2 + 6*q^2 + 6*q^4 + 4*q^6 + 3*q^8 + q^10 + q^12, {{{{-q^(-8)}}, {{-q^(-8)}}}, {{{-q^8}}, {{-q^8}}}}}, {7 + q^(-10) + 2/q^8 + 4/q^6 + 5/q^4 + 7/q^2 + 7*q^2 + 5*q^4 + 4*q^6 + 2*q^8 + q^10, {{{{Power[q, -6], 0, 0}, {0, -q^(-8), 0}, {0, 0, Power[q, -12]}}, {{1/(q^12*(1 + q^2 + q^4)), (-1 - q^4)/(q^11*(1 + 2*q^2 + 2*q^4 + q^6)), (1 + q^2 + q^4 + q^6 + q^8)/(q^8*(1 + q^2 + q^4)^2)}, {(-1 - q^2)/(q^11*(1 + q^4)), (1 - q^2 + q^4)/(q^10*(1 + q^4)), (1 + 2*q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10)/(q^5*(1 + q^4)^2*(1 + q^2 + q^4))}, {Power[q, -8], 1/(q^5*(1 + q^2)), q^2/(1 + q^2 + 2*q^4 + q^6 + q^8)}}}, {{{Power[q, 6], 0, 0}, {0, -q^8, 0}, {0, 0, Power[q, 12]}}, {{q^16/(1 + q^2 + q^4), -((q^13*(1 + q^4))/(1 + 2*q^2 + 2*q^4 + q^6)), (q^8*(1 + q^2 + q^4 + q^6 + q^8))/(1 + q^2 + q^4)^2}, {-((q^13*(1 + q^2))/(1 + q^4)), (q^10*(1 - q^2 + q^4))/(1 + q^4), (q^7*(1 + 2*q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10))/((1 + q^4)^2*(1 + q^2 + q^4))}, {Power[q, 8], q^7/(1 + q^2), q^6/(1 + q^2 + 2*q^4 + q^6 + q^8)}}}}}, {1 + q^(-4) + q^(-2) + q^2 + q^4, {{{{-q^(-8), 0}, {0, Power[q, -12]}}, {{1/(q^12*(1 + q^4)), (1 + q^4 + q^8)/(q^10*(1 + q^4)^2)}, {Power[q, -10], -(1/(q^4*(1 + q^4)))}}}, {{{-q^8, 0}, {0, Power[q, 12]}}, {{q^16/(1 + q^4), (q^10*(1 + q^4 + q^8))/(1 + q^4)^2}, {Power[q, 10], -(q^8/(1 + q^4))}}}}}}
BraidingData[Subscript[A, 4]][Irrep[Subscript[A, 4]][{1, 0, 0, 0}], 2]:={{3 + q^(-8) + q^(-6) + 2/q^4 + 2/q^2 + 2*q^2 + 2*q^4 + q^6 + q^8, {{{{Power[q, -4]}}}, {{{Power[q, 4]}}}}}, {2 + q^(-6) + q^(-4) + 2/q^2 + 2*q^2 + q^4 + q^6, {{{{-q^(-6)}}}, {{{-q^6}}}}}}
BraidingData[Subscript[A, 4]][Irrep[Subscript[A, 4]][{1, 0, 0, 0}], 3]:={{5 + q^(-12) + q^(-10) + 2/q^8 + 3/q^6 + 4/q^4 + 4/q^2 + 4*q^2 + 4*q^4 + 3*q^6 + 2*q^8 + q^10 + q^12, {{{{Power[q, -4]}}, {{Power[q, -4]}}}, {{{Power[q, 4]}}, {{Power[q, 4]}}}}}, {6 + q^(-10) + 2/q^8 + 3/q^6 + 5/q^4 + 6/q^2 + 6*q^2 + 5*q^4 + 3*q^6 + 2*q^8 + q^10, {{{{Power[q, -4], 0}, {0, -q^(-6)}}, {{-(1/(q^6*(1 + q^2))), (1 + q^2 + q^4)/(q^5*(1 + q^2)^2)}, {Power[q, -5], 1/(q^2*(1 + q^2))}}}, {{{Power[q, 4], 0}, {0, -q^6}}, {{-(q^8/(1 + q^2)), (q^5*(1 + q^2 + q^4))/(1 + q^2)^2}, {Power[q, 5], q^4/(1 + q^2)}}}}}, {2 + q^(-6) + q^(-4) + 2/q^2 + 2*q^2 + q^4 + q^6, {{{{-q^(-6)}}, {{-q^(-6)}}}, {{{-q^6}}, {{-q^6}}}}}}
BraidingData[Subscript[A, 4]][Irrep[Subscript[A, 4]][{1, 0, 0, 0}], 4]:={{8 + q^(-16) + q^(-14) + 2/q^12 + 3/q^10 + 5/q^8 + 5/q^6 + 7/q^4 + 7/q^2 + 7*q^2 + 7*q^4 + 5*q^6 + 5*q^8 + 3*q^10 + 2*q^12 + q^14 + q^16, {{{{Power[q, -4]}}, {{Power[q, -4]}}, {{Power[q, -4]}}}, {{{Power[q, 4]}}, {{Power[q, 4]}}, {{Power[q, 4]}}}}}, {13 + q^(-14) + 2/q^12 + 4/q^10 + 6/q^8 + 9/q^6 + 11/q^4 + 13/q^2 + 13*q^2 + 11*q^4 + 9*q^6 + 6*q^8 + 4*q^10 + 2*q^12 + q^14, {{{{Power[q, -4], 0, 0}, {0, Power[q, -4], 0}, {0, 0, -q^(-6)}}, {{Power[q, -4], 0, 0}, {0, -(1/(q^6*(1 + q^2))), (1 + q^2 + q^4)/(q^5*(1 + q^2)^2)}, {0, Power[q, -5], 1/(q^2*(1 + q^2))}}, {{-(1/(q^6*(1 + q^2 + q^4))), (1 + 2*q^2 + 2*q^4 + 2*q^6 + q^8)/(q^5*(1 + q^2 + q^4)^2), 0}, {Power[q, -5], Power[1 + q^2 + q^4, -1], 0}, {0, 0, Power[q, -4]}}}, {{{Power[q, 4], 0, 0}, {0, Power[q, 4], 0}, {0, 0, -q^6}}, {{Power[q, 4], 0, 0}, {0, -(q^8/(1 + q^2)), (q^5*(1 + q^2 + q^4))/(1 + q^2)^2}, {0, Power[q, 5], q^4/(1 + q^2)}}, {{-(q^10/(1 + q^2 + q^4)), (q^5*(1 + 2*q^2 + 2*q^4 + 2*q^6 + q^8))/(1 + q^2 + q^4)^2, 0}, {Power[q, 5], q^4/(1 + q^2 + q^4), 0}, {0, 0, Power[q, 4]}}}}}, {8 + q^(-12) + q^(-10) + 3/q^8 + 4/q^6 + 6/q^4 + 6/q^2 + 6*q^2 + 6*q^4 + 4*q^6 + 3*q^8 + q^10 + q^12, {{{{Power[q, -4], 0}, {0, -q^(-6)}}, {{-(1/(q^6*(1 + q^2))), (1 + q^2 + q^4)/(q^5*(1 + q^2)^2)}, {Power[q, -5], 1/(q^2*(1 + q^2))}}, {{Power[q, -4], 0}, {0, -q^(-6)}}}, {{{Power[q, 4], 0}, {0, -q^6}}, {{-(q^8/(1 + q^2)), (q^5*(1 + q^2 + q^4))/(1 + q^2)^2}, {Power[q, 5], q^4/(1 + q^2)}}, {{Power[q, 4], 0}, {0, -q^6}}}}}, {7 + q^(-10) + 2/q^8 + 4/q^6 + 5/q^4 + 7/q^2 + 7*q^2 + 5*q^4 + 4*q^6 + 2*q^8 + q^10, {{{{Power[q, -4], 0, 0}, {0, -q^(-6), 0}, {0, 0, -q^(-6)}}, {{-(1/(q^6*(1 + q^2))), (1 + q^2 + q^4)/(q^5*(1 + q^2)^2), 0}, {Power[q, -5], 1/(q^2*(1 + q^2)), 0}, {0, 0, -q^(-6)}}, {{-q^(-6), 0, 0}, {0, -(1/(q^6*(1 + q^2 + q^4))), (1 + 2*q^2 + 2*q^4 + 2*q^6 + q^8)/(q^5*(1 + q^2 + q^4)^2)}, {0, Power[q, -5], Power[1 + q^2 + q^4, -1]}}}, {{{Power[q, 4], 0, 0}, {0, -q^6, 0}, {0, 0, -q^6}}, {{-(q^8/(1 + q^2)), (q^5*(1 + q^2 + q^4))/(1 + q^2)^2, 0}, {Power[q, 5], q^4/(1 + q^2), 0}, {0, 0, -q^6}}, {{-q^6, 0, 0}, {0, -(q^10/(1 + q^2 + q^4)), (q^5*(1 + 2*q^2 + 2*q^4 + 2*q^6 + q^8))/(1 + q^2 + q^4)^2}, {0, Power[q, 5], q^4/(1 + q^2 + q^4)}}}}}, {1 + q^(-4) + q^(-2) + q^2 + q^4, {{{{-q^(-6)}}, {{-q^(-6)}}, {{-q^(-6)}}}, {{{-q^6}}, {{-q^6}}, {{-q^6}}}}}}
End[]
EndPackage[]