BeginPackage["QuantumGroups`Data`B2`BraidingData`", {"QuantumGroups`", "QuantumGroups`Braiding`"}]
Message[QuantumGroups::loading,"QuantumGroups`Data`B2`BraidingData`"]

Begin["`Private`"]
q=Global`q;
BraidingData[Subscript[B, 2]][Irrep[Subscript[B, 2]][{0, 1}], 2]:={{1, {{{{-q^(-10)}}}, {{{-q^10}}}}}, {1 + q^(-6) + q^(-2) + q^2 + q^6, {{{{-q^(-6)}}}, {{{-q^6}}}}}, {2 + q^(-8) + q^(-6) + q^(-4) + q^(-2) + q^2 + q^4 + q^6 + q^8, {{{{Power[q, -4]}}}, {{{Power[q, 4]}}}}}}
BraidingData[Subscript[B, 2]][Irrep[Subscript[B, 2]][{0, 1}], 3]:={{q^(-4) + q^(-2) + q^2 + q^4, {{{{-q^(-10), 0, 0}, {0, -q^(-6), 0}, {0, 0, Power[q, -4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), 1/(q^2*(1 + q^2)^2), (1 + q^4)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4))}, {(1 + q^2 + q^4 + q^6 + q^8)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4)), (-1 - q^2 - q^4)/(q^8*(1 + q^2)^2), (1 + q^4)/(q^8*(1 + q^2)^2*(1 - q^2 + q^4))}, {(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16)/(q^8*(1 + q^2)^2*(1 - q^2 + 2*q^4 - q^6 + q^8)), (1 + q^8)/(q^10*(1 + q^2)^2*(1 + q^4)), (-1 - q^4)/(q^10*(1 + q^2)^2*(1 - q^2 + q^4))}}}, {{{-q^10, 0, 0}, {0, -q^6, 0}, {0, 0, Power[q, 4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), q^6/(1 + q^2)^2, (q^8*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4))}, {(q^4*(1 + q^2 + q^4 + q^6 + q^8))/((1 + q^2)^2*(1 - q^2 + q^4)), -((q^8*(1 + q^2 + q^4))/(1 + q^2)^2), (q^12*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4))}, {(q^4*(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16))/((1 + q^2)^2*(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^10*(1 + q^8))/((1 + q^2)^2*(1 + q^4)), -((q^14*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4)))}}}}}, {2 + q^(-10) + q^(-8) + q^(-6) + 2/q^4 + 2/q^2 + 2*q^2 + 2*q^4 + q^6 + q^8 + q^10, {{{{-q^(-6), 0}, {0, Power[q, -4]}}, {{1/(q^2*(1 + q^2)), 1/(q^4*(1 + q^2))}, {(1 + q^2 + q^4)/(q^6*(1 + q^2)), -(1/(q^6*(1 + q^2)))}}}, {{{-q^6, 0}, {0, Power[q, 4]}}, {{q^4/(1 + q^2), q^6/(1 + q^2)}, {(q^4*(1 + q^2 + q^4))/(1 + q^2), -(q^8/(1 + q^2))}}}}}, {2 + q^(-12) + q^(-10) + q^(-8) + 2/q^6 + 2/q^4 + 2/q^2 + 2*q^2 + 2*q^4 + 2*q^6 + q^8 + q^10 + q^12, {{{{Power[q, -4]}}, {{Power[q, -4]}}}, {{{Power[q, 4]}}, {{Power[q, 4]}}}}}}
BraidingData[Subscript[B, 2]][Irrep[Subscript[B, 2]][{0, 1}], 4]:={{1, {{{{-q^(-10), 0, 0}, {0, -q^(-6), 0}, {0, 0, Power[q, -4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), 1/(q^2*(1 + q^2)^2), (1 + q^4)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4))}, {(1 + q^2 + q^4 + q^6 + q^8)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4)), (-1 - q^2 - q^4)/(q^8*(1 + q^2)^2), (1 + q^4)/(q^8*(1 + q^2)^2*(1 - q^2 + q^4))}, {(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16)/(q^8*(1 + q^2)^2*(1 + q^4)*(1 - q^2 + q^4)), (1 + q^8)/(q^10*(1 + q^2)^2*(1 + q^4)), (-1 - q^4)/(q^10*(1 + q^2)^2*(1 - q^2 + q^4))}}, {{-q^(-10), 0, 0}, {0, -q^(-6), 0}, {0, 0, Power[q, -4]}}}, {{{-q^10, 0, 0}, {0, -q^6, 0}, {0, 0, Power[q, 4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), q^6/(1 + q^2)^2, (q^8*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4))}, {(q^4*(1 + q^2 + q^4 + q^6 + q^8))/((1 + q^2)^2*(1 - q^2 + q^4)), -((q^8*(1 + q^2 + q^4))/(1 + q^2)^2), (q^12*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4))}, {(q^4*(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16))/((1 + q^2)^2*(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^10*(1 + q^8))/((1 + q^2)^2*(1 + q^4)), -((q^14*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4)))}}, {{-q^10, 0, 0}, {0, -q^6, 0}, {0, 0, Power[q, 4]}}}}}, {1 + q^(-6) + q^(-2) + q^2 + q^6, {{{{-q^(-10), 0, 0, 0, 0}, {0, -q^(-6), 0, 0, 0}, {0, 0, Power[q, -4], 0, 0}, {0, 0, 0, -q^(-6), 0}, {0, 0, 0, 0, Power[q, -4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), 1/(q^2*(1 + q^2)^2), (1 + q^4)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4)), 0, 0}, {(1 + q^2 + q^4 + q^6 + q^8)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4)), (-1 - q^2 - q^4)/(q^8*(1 + q^2)^2), (1 + q^4)/(q^8*(1 + q^2)^2*(1 - q^2 + q^4)), 0, 0}, {(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16)/(q^8*(1 + q^2)^2*(1 + q^4)*(1 - q^2 + q^4)), (1 + q^8)/(q^10*(1 + q^2)^2*(1 + q^4)), (-1 - q^4)/(q^10*(1 + q^2)^2*(1 - q^2 + q^4)), 0, 0}, {0, 0, 0, 1/(q^2*(1 + q^2)), 1/(q^4*(1 + q^2))}, {0, 0, 0, (1 + q^2 + q^4)/(q^6*(1 + q^2)), -(1/(q^6*(1 + q^2)))}}, {{-q^(-6), 0, 0, 0, 0}, {0, (1 + q^2 + q^4)/(1 + q^2 + q^4 + q^6 + q^8), 0, (1 + q^2)/(q^4*(1 + q^2 + q^4 + q^6 + q^8)), 0}, {0, 0, q^4/(1 + q^2 + q^4 + q^6 + q^8), 0, (-1 - q^6)/(q^2*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}, {0, (1 + q^2 + q^4 + q^6 + q^8 + q^10 + q^12 + q^14)/(q^10*(1 + q^2 + q^4 + q^6 + q^8)), 0, (-1 - q^2 - q^4)/(q^10*(1 + q^2 + q^4 + q^6 + q^8)), 0}, {0, 0, -(((1 + q^2)*(1 + q^2 + 3*q^4 + 2*q^6 + 3*q^8 + q^10 + q^12))/(q^8*(1 + q^2 + q^4 + q^6 + q^8))), 0, -(1/(q^6*(1 + q^2 + q^4 + q^6 + q^8)))}}}, {{{-q^10, 0, 0, 0, 0}, {0, -q^6, 0, 0, 0}, {0, 0, Power[q, 4], 0, 0}, {0, 0, 0, -q^6, 0}, {0, 0, 0, 0, Power[q, 4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), q^6/(1 + q^2)^2, (q^8*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4)), 0, 0}, {(q^4*(1 + q^2 + q^4 + q^6 + q^8))/((1 + q^2)^2*(1 - q^2 + q^4)), -((q^8*(1 + q^2 + q^4))/(1 + q^2)^2), (q^12*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4)), 0, 0}, {(q^4*(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16))/((1 + q^2)^2*(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^10*(1 + q^8))/((1 + q^2)^2*(1 + q^4)), -((q^14*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4))), 0, 0}, {0, 0, 0, q^4/(1 + q^2), q^6/(1 + q^2)}, {0, 0, 0, (q^4*(1 + q^2 + q^4))/(1 + q^2), -(q^8/(1 + q^2))}}, {{-q^6, 0, 0, 0, 0}, {0, (q^4*(1 + q^2 + q^4))/(1 + q^2 + q^4 + q^6 + q^8), 0, (q^10*(1 + q^2))/(1 + q^2 + q^4 + q^6 + q^8), 0}, {0, 0, q^4/(1 + q^2 + q^4 + q^6 + q^8), 0, -((q^8*(1 + q^6))/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}, {0, (q^4*(1 + q^2 + q^4 + q^6 + q^8 + q^10 + q^12 + q^14))/(1 + q^2 + q^4 + q^6 + q^8), 0, -((q^14*(1 + q^2 + q^4))/(1 + q^2 + q^4 + q^6 + q^8)), 0}, {0, 0, -((q^2*(1 + q^2)*(1 + q^2 + 3*q^4 + 2*q^6 + 3*q^8 + q^10 + q^12))/(1 + q^2 + q^4 + q^6 + q^8)), 0, -(q^14/(1 + q^2 + q^4 + q^6 + q^8))}}}}}, {2 + q^(-8) + q^(-6) + q^(-4) + q^(-2) + q^2 + q^4 + q^6 + q^8, {{{{-q^(-10), 0, 0, 0, 0, 0}, {0, -q^(-6), 0, 0, 0, 0}, {0, 0, Power[q, -4], 0, 0, 0}, {0, 0, 0, -q^(-6), 0, 0}, {0, 0, 0, 0, Power[q, -4], 0}, {0, 0, 0, 0, 0, Power[q, -4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), 1/(q^2*(1 + q^2)^2), (1 + q^4)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4)), 0, 0, 0}, {(1 + q^2 + q^4 + q^6 + q^8)/(q^4*(1 + q^2)^2*(1 - q^2 + q^4)), (-1 - q^2 - q^4)/(q^8*(1 + q^2)^2), (1 + q^4)/(q^8*(1 + q^2)^2*(1 - q^2 + q^4)), 0, 0, 0}, {(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16)/(q^8*(1 + q^2)^2*(1 - q^2 + 2*q^4 - q^6 + q^8)), (1 + q^8)/(q^10*(1 + q^2)^2*(1 + q^4)), (-1 - q^4)/(q^10*(1 + q^2)^2*(1 - q^2 + q^4)), 0, 0, 0}, {0, 0, 0, 1/(q^2*(1 + q^2)), 1/(q^4*(1 + q^2)), 0}, {0, 0, 0, (1 + q^2 + q^4)/(q^6*(1 + q^2)), -(1/(q^6*(1 + q^2))), 0}, {0, 0, 0, 0, 0, Power[q, -4]}}, {{Power[q, -4], 0, 0, 0, 0, 0}, {0, q^4/(1 + q^2 + q^4 + q^6 + q^8), 0, (1 + q^2 + q^4 + q^6)/(q^4*(1 + q^2 + q^4 + q^6 + q^8)), 0, 0}, {0, 0, (q^8*(1 + q^4))/(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16), 0, (1 + q^6)/(1 + 2*q^2 + 3*q^4 + 3*q^6 + 3*q^8 + 2*q^10 + q^12), (1 + q^2 + q^6 + q^8)/(q^4*(1 + q^2 + q^4 + q^8 + q^10 + q^12))}, {0, (1 + q^2 + q^4 + q^6 + q^8 + q^10)/(q^6*(1 + q^2 + q^4 + q^6 + q^8)), 0, -(1/(q^6*(1 + q^2 + q^4 + q^6 + q^8))), 0, 0}, {0, 0, ((1 + q^2)*(1 - q^2 + q^4)*(1 + q^2 + 2*q^4 + q^6 + q^8))/(q^2*(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16)), 0, (-1 - 2*q^2 - 2*q^4 - 3*q^6 - 2*q^8 - 2*q^10 - q^12)/(q^8*(1 + 2*q^2 + 3*q^4 + 3*q^6 + 3*q^8 + 2*q^10 + q^12)), (1 + q^2 + q^4 + q^6)/(q^8*(1 + q^2 + q^4 + q^8 + q^10 + q^12))}, {0, 0, ((1 - q^2 + q^4)*(1 + 2*q^2 + q^4)*(1 + q^4 - q^6 + q^8 + q^12))/(q^8*(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16)), 0, ((1 + q^2)*(1 - q^2 + q^4 - q^6 + q^8))/(q^10*(1 + 2*q^2 + 3*q^4 + 3*q^6 + 3*q^8 + 2*q^10 + q^12)), (-1 - q^4)/(q^10*(1 + q^2 + q^4 + q^8 + q^10 + q^12))}}}, {{{-q^10, 0, 0, 0, 0, 0}, {0, -q^6, 0, 0, 0, 0}, {0, 0, Power[q, 4], 0, 0, 0}, {0, 0, 0, -q^6, 0, 0}, {0, 0, 0, 0, Power[q, 4], 0}, {0, 0, 0, 0, 0, Power[q, 4]}}, {{q^4/((1 + q^2)^2*(1 - q^2 + q^4)), q^6/(1 + q^2)^2, (q^8*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4)), 0, 0, 0}, {(q^4*(1 + q^2 + q^4 + q^6 + q^8))/((1 + q^2)^2*(1 - q^2 + q^4)), -((q^8*(1 + q^2 + q^4))/(1 + q^2)^2), (q^12*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4)), 0, 0, 0}, {(q^4*(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16))/((1 + q^2)^2*(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^10*(1 + q^8))/((1 + q^2)^2*(1 + q^4)), -((q^14*(1 + q^4))/((1 + q^2)^2*(1 - q^2 + q^4))), 0, 0, 0}, {0, 0, 0, q^4/(1 + q^2), q^6/(1 + q^2), 0}, {0, 0, 0, (q^4*(1 + q^2 + q^4))/(1 + q^2), -(q^8/(1 + q^2)), 0}, {0, 0, 0, 0, 0, Power[q, 4]}}, {{Power[q, 4], 0, 0, 0, 0, 0}, {0, q^4/(1 + q^2 + q^4 + q^6 + q^8), 0, (q^6*(1 + q^2 + q^4 + q^6))/(1 + q^2 + q^4 + q^6 + q^8), 0, 0}, {0, 0, (q^4*(1 + q^4))/(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16), 0, (q^6*(1 + q^6))/(1 + 2*q^2 + 3*q^4 + 3*q^6 + 3*q^8 + 2*q^10 + q^12), (q^8*(1 + q^2 + q^6 + q^8))/(1 + q^2 + q^4 + q^8 + q^10 + q^12)}, {0, (q^4*(1 + q^2 + q^4 + q^6 + q^8 + q^10))/(1 + q^2 + q^4 + q^6 + q^8), 0, -(q^14/(1 + q^2 + q^4 + q^6 + q^8)), 0, 0}, {0, 0, (q^4*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + 2*q^10 + q^12 + q^14))/(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16), 0, -((q^8*(1 + 2*q^2 + 2*q^4 + 3*q^6 + 2*q^8 + 2*q^10 + q^12))/(1 + 2*q^2 + 3*q^4 + 3*q^6 + 3*q^8 + 2*q^10 + q^12)), (q^14*(1 + q^2 + q^4 + q^6))/(1 + q^2 + q^4 + q^8 + q^10 + q^12)}, {0, 0, (q^4*(1 + q^2 + q^4 + q^6 + q^8 + 2*q^10 + q^12 + q^14 + q^16 + q^18 + q^20))/(1 + q^2 + q^4 + q^6 + 2*q^8 + q^10 + q^12 + q^14 + q^16), 0, (q^12*(1 + q^10))/(1 + 2*q^2 + 3*q^4 + 3*q^6 + 3*q^8 + 2*q^10 + q^12), -((q^18*(1 + q^4))/(1 + q^2 + q^4 + q^8 + q^10 + q^12))}}}}}, {2 + q^(-12) + q^(-8) + q^(-6) + 2/q^4 + q^(-2) + q^2 + 2*q^4 + q^6 + q^8 + q^12, {{{{-q^(-6), 0}, {0, Power[q, -4]}}, {{1/(q^2*(1 + q^2)), 1/(q^4*(1 + q^2))}, {(1 + q^2 + q^4)/(q^6*(1 + q^2)), -(1/(q^6*(1 + q^2)))}}, {{-q^(-6), 0}, {0, Power[q, -4]}}}, {{{-q^6, 0}, {0, Power[q, 4]}}, {{q^4/(1 + q^2), q^6/(1 + q^2)}, {(q^4*(1 + q^2 + q^4))/(1 + q^2), -(q^8/(1 + q^2))}}, {{-q^6, 0}, {0, Power[q, 4]}}}}}, {3 + q^(-14) + q^(-12) + 2/q^10 + 2/q^8 + 3/q^6 + 3/q^4 + 4/q^2 + 4*q^2 + 3*q^4 + 3*q^6 + 2*q^8 + 2*q^10 + q^12 + q^14, {{{{-q^(-6), 0, 0}, {0, Power[q, -4], 0}, {0, 0, Power[q, -4]}}, {{1/(q^2*(1 + q^2)), 1/(q^4*(1 + q^2)), 0}, {(1 + q^2 + q^4)/(q^6*(1 + q^2)), -(1/(q^6*(1 + q^2))), 0}, {0, 0, Power[q, -4]}}, {{Power[q, -4], 0, 0}, {0, Power[1 + q^2 + q^4, -1], (1 + q^2)/(q^4*(1 + q^2 + q^4))}, {0, ((1 + q^2)*(1 + q^4))/(q^6*(1 + q^2 + q^4)), -(1/(q^6*(1 + q^2 + q^4)))}}}, {{{-q^6, 0, 0}, {0, Power[q, 4], 0}, {0, 0, Power[q, 4]}}, {{q^4/(1 + q^2), q^6/(1 + q^2), 0}, {(q^4*(1 + q^2 + q^4))/(1 + q^2), -(q^8/(1 + q^2)), 0}, {0, 0, Power[q, 4]}}, {{Power[q, 4], 0, 0}, {0, q^4/(1 + q^2 + q^4), (q^6*(1 + q^2))/(1 + q^2 + q^4)}, {0, (q^4*(1 + q^2)*(1 + q^4))/(1 + q^2 + q^4), -(q^10/(1 + q^2 + q^4))}}}}}, {3 + q^(-16) + q^(-14) + q^(-12) + 2/q^10 + 3/q^8 + 2/q^6 + 3/q^4 + 3/q^2 + 3*q^2 + 3*q^4 + 2*q^6 + 3*q^8 + 2*q^10 + q^12 + q^14 + q^16, {{{{Power[q, -4]}}, {{Power[q, -4]}}, {{Power[q, -4]}}}, {{{Power[q, 4]}}, {{Power[q, 4]}}, {{Power[q, 4]}}}}}}
BraidingData[Subscript[B, 2]][Irrep[Subscript[B, 2]][{1, 0}], 2]:={{1, {{{{Power[q, -16]}}}, {{{Power[q, 16]}}}}}, {2 + q^(-8) + q^(-6) + q^(-4) + q^(-2) + q^2 + q^4 + q^6 + q^8, {{{{-q^(-10)}}}, {{{-q^10}}}}}, {2 + q^(-12) + q^(-8) + q^(-6) + 2/q^4 + q^(-2) + q^2 + 2*q^4 + q^6 + q^8 + q^12, {{{{Power[q, -6]}}}, {{{Power[q, 6]}}}}}}
BraidingData[Subscript[B, 2]][Irrep[Subscript[B, 2]][{1, 0}], 3]:={{1 + q^(-6) + q^(-2) + q^2 + q^6, {{{{Power[q, -16], 0, 0}, {0, -q^(-10), 0}, {0, 0, Power[q, -6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(1/(q^2*(1 - q^2 + 2*q^4 - q^6 + q^8))), -(1/(q^4*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)))}, {-(((1 + q^4)*(1 + q^8))/(q^6*(1 + q^4 + q^6 + q^8 + q^12))), (1 - q^2 + q^4 - q^6 + q^8)/(q^12*(1 - q^2 + 2*q^4 - q^6 + q^8)), -(1/(q^10*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)))}, {-(((1 + q^4)*(1 + q^2 + q^4 + q^6 + 2*q^8 + 2*q^10 + 2*q^12 + q^14 + q^16 + q^18 + q^20))/(q^16*(1 + q^4 + q^6 + q^8 + q^12))), (-1 - q^2 - q^4 - q^6 - q^8 - q^10 - q^12)/(q^18*(1 - q^2 + 2*q^4 - q^6 + q^8)), (1 + q^2 + q^4)/(q^16*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}}}, {{{Power[q, 16], 0, 0}, {0, -q^10, 0}, {0, 0, Power[q, 6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(q^10/(1 - q^2 + 2*q^4 - q^6 + q^8)), -(q^16/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}, {-((q^6*(1 + q^4 + q^8 + q^12))/(1 + q^4 + q^6 + q^8 + q^12)), (q^12*(1 - q^2 + q^4 - q^6 + q^8))/(1 - q^2 + 2*q^4 - q^6 + q^8), -(q^22/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}, {-((q^4*(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24))/(1 + q^4 + q^6 + q^8 + q^12)), -((q^14*(1 + q^2 + q^4 + q^6 + q^8 + q^10 + q^12))/(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^24*(1 + q^2 + q^4))/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)}}}}}, {2 + q^(-8) + q^(-6) + q^(-4) + q^(-2) + q^2 + q^4 + q^6 + q^8, {{{{-q^(-10)}}, {{-q^(-10)}}}, {{{-q^10}}, {{-q^10}}}}}, {3 + q^(-14) + q^(-12) + 2/q^10 + 2/q^8 + 3/q^6 + 3/q^4 + 4/q^2 + 4*q^2 + 3*q^4 + 3*q^6 + 2*q^8 + 2*q^10 + q^12 + q^14, {{{{-q^(-10), 0}, {0, Power[q, -6]}}, {{1/(q^2*(1 + q^4)), 1/(q^6*(1 + q^4))}, {(1 + q^4 + q^8)/(q^10*(1 + q^4)), -(1/(q^10*(1 + q^4)))}}}, {{{-q^10, 0}, {0, Power[q, 6]}}, {{q^6/(1 + q^4), q^10/(1 + q^4)}, {(q^6*(1 + q^4 + q^8))/(1 + q^4), -(q^14/(1 + q^4))}}}}}, {2 + q^(-18) + q^(-14) + q^(-12) + 2/q^10 + q^(-8) + 3/q^6 + 2/q^4 + 3/q^2 + 3*q^2 + 2*q^4 + 3*q^6 + q^8 + 2*q^10 + q^12 + q^14 + q^18, {{{{Power[q, -6]}}, {{Power[q, -6]}}}, {{{Power[q, 6]}}, {{Power[q, 6]}}}}}}
BraidingData[Subscript[B, 2]][Irrep[Subscript[B, 2]][{1, 0}], 4]:={{1, {{{{Power[q, -16], 0, 0}, {0, -q^(-10), 0}, {0, 0, Power[q, -6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(1/(q^2*(1 - q^2 + 2*q^4 - q^6 + q^8))), -(1/(q^4*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)))}, {-(((1 + q^4)*(1 + q^8))/(q^6*(1 + q^4 + q^6 + q^8 + q^12))), (1 - q^2 + q^4 - q^6 + q^8)/(q^12*(1 - q^2 + 2*q^4 - q^6 + q^8)), -(1/(q^10*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)))}, {-(((1 + q^4)*(1 + q^2 + q^4 + q^6 + 2*q^8 + 2*q^10 + 2*q^12 + q^14 + q^16 + q^18 + q^20))/(q^16*(1 + q^4 + q^6 + q^8 + q^12))), (-1 - q^2 - q^4 - q^6 - q^8 - q^10 - q^12)/(q^18*(1 - q^2 + 2*q^4 - q^6 + q^8)), (1 + q^2 + q^4)/(q^16*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}}, {{Power[q, -16], 0, 0}, {0, -q^(-10), 0}, {0, 0, Power[q, -6]}}}, {{{Power[q, 16], 0, 0}, {0, -q^10, 0}, {0, 0, Power[q, 6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(q^10/(1 - q^2 + 2*q^4 - q^6 + q^8)), -(q^16/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}, {-((q^6*(1 + q^4 + q^8 + q^12))/(1 + q^4 + q^6 + q^8 + q^12)), (q^12*(1 - q^2 + q^4 - q^6 + q^8))/(1 - q^2 + 2*q^4 - q^6 + q^8), -(q^22/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))}, {-((q^4*(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24))/(1 + q^4 + q^6 + q^8 + q^12)), -((q^14*(1 + q^2 + q^4 + q^6 + q^8 + q^10 + q^12))/(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^24*(1 + q^2 + q^4))/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)}}, {{Power[q, 16], 0, 0}, {0, -q^10, 0}, {0, 0, Power[q, 6]}}}}}, {1 + q^(-6) + q^(-2) + q^2 + q^6, {{{{-q^(-10)}}, {{-q^(-10)}}, {{-q^(-10)}}}, {{{-q^10}}, {{-q^10}}, {{-q^10}}}}}, {2 + q^(-8) + q^(-6) + q^(-4) + q^(-2) + q^2 + q^4 + q^6 + q^8, {{{{Power[q, -16], 0, 0, 0, 0, 0}, {0, -q^(-10), 0, 0, 0, 0}, {0, 0, Power[q, -6], 0, 0, 0}, {0, 0, 0, -q^(-10), 0, 0}, {0, 0, 0, 0, -q^(-10), 0}, {0, 0, 0, 0, 0, Power[q, -6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(1/(q^2*(1 - q^2 + 2*q^4 - q^6 + q^8))), -(1/(q^4*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))), 0, 0, 0}, {-(((1 + q^4)*(1 + q^8))/(q^6*(1 + q^4 + q^6 + q^8 + q^12))), (1 - q^2 + q^4 - q^6 + q^8)/(q^12*(1 - q^2 + 2*q^4 - q^6 + q^8)), -(1/(q^10*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))), 0, 0, 0}, {-(((1 + q^4)*(1 + q^2 + q^4 + q^6 + 2*q^8 + 2*q^10 + 2*q^12 + q^14 + q^16 + q^18 + q^20))/(q^16*(1 + q^4 + q^6 + q^8 + q^12))), (-1 - q^2 - q^4 - q^6 - q^8 - q^10 - q^12)/(q^18*(1 - q^2 + 2*q^4 - q^6 + q^8)), (1 + q^2 + q^4)/(q^16*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)), 0, 0, 0}, {0, 0, 0, -q^(-10), 0, 0}, {0, 0, 0, 0, 1/(q^2*(1 + q^4)), 1/(q^6*(1 + q^4))}, {0, 0, 0, 0, (1 + q^4 + q^8)/(q^10*(1 + q^4)), -(1/(q^10*(1 + q^4)))}}, {{-q^(-10), 0, 0, 0, 0, 0}, {0, (1 - q^2 + q^4 - q^6 + q^8)/(q^2*(1 + q^4 + q^8 + q^12)), 0, (-1 - q^4)/(q^6*(1 + q^2 + q^4)), (1 + 2*q^4 - q^6 + 2*q^8 + q^12)/(q^10*(1 + q^2 + 2*q^4 + q^6 + 2*q^8 + q^10 + 2*q^12 + q^14 + q^16)), 0}, {0, 0, q^6/(1 + q^4 + q^8 + q^12), 0, 0, (-1 - q^2 - 3*q^4 - 2*q^6 - 4*q^8 - 3*q^10 - 4*q^12 - 2*q^14 - 3*q^16 - q^18 - q^20)/(q^8*(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20))}, {0, -(((1 - q^2 + q^4)*(1 + q^2 + q^4))/(q^4*(1 + q^4 + q^8 + q^12))), 0, (1 - q^2 + q^4 - q^6 + q^8)/(q^8*(1 + q^4 + q^8)), (1 + 2*q^4 - q^6 + 2*q^8 + q^12)/(q^10*(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20)), 0}, {0, ((1 - q^2 + q^4)*(1 + q^2 + q^4)*(1 + q^4 + q^8 + q^10 + q^12 + q^16 + q^20))/(q^14*(1 + 3*q^4 - q^6 + 5*q^8 - q^10 + 6*q^12 - q^14 + 5*q^16 - q^18 + 3*q^20 + q^24)), 0, (1 + 2*q^4 + 2*q^8 + q^10 + 2*q^12 + q^14 + 2*q^16 + 2*q^20 + q^24)/(q^16*(1 + 3*q^4 - q^6 + 5*q^8 - q^10 + 5*q^12 - q^14 + 3*q^16 + q^20)), (1 + 2*q^4 - q^6 + 2*q^8 + q^12)/(q^16*(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20)), 0}, {0, 0, (-1 + q^2 - 3*q^4 + 3*q^6 - 6*q^8 + 5*q^10 - 7*q^12 + 5*q^14 - 6*q^16 + 3*q^18 - 3*q^20 + q^22 - q^24)/(q^8*(1 + 3*q^4 - q^6 + 5*q^8 - q^10 + 6*q^12 - q^14 + 5*q^16 - q^18 + 3*q^20 + q^24)), 0, 0, -(1/(q^10*(1 + q^4 + q^8 + q^12)))}}}, {{{Power[q, 16], 0, 0, 0, 0, 0}, {0, -q^10, 0, 0, 0, 0}, {0, 0, Power[q, 6], 0, 0, 0}, {0, 0, 0, -q^10, 0, 0}, {0, 0, 0, 0, -q^10, 0}, {0, 0, 0, 0, 0, Power[q, 6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(q^10/(1 - q^2 + 2*q^4 - q^6 + q^8)), -(q^16/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)), 0, 0, 0}, {-((q^6*(1 + q^4)*(1 + q^8))/(1 + q^4 + q^6 + q^8 + q^12)), (q^12*(1 - q^2 + q^4 - q^6 + q^8))/(1 - q^2 + 2*q^4 - q^6 + q^8), -(q^22/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)), 0, 0, 0}, {-((q^4*(1 + q^4)*(1 + q^2 + q^4 + q^6 + 2*q^8 + 2*q^10 + 2*q^12 + q^14 + q^16 + q^18 + q^20))/(1 + q^4 + q^6 + q^8 + q^12)), -((q^14*(1 + q^2 + q^4 + q^6 + q^8 + q^10 + q^12))/(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^24*(1 + q^2 + q^4))/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12), 0, 0, 0}, {0, 0, 0, -q^10, 0, 0}, {0, 0, 0, 0, q^6/(1 + q^4), q^10/(1 + q^4)}, {0, 0, 0, 0, (q^6*(1 + q^4 + q^8))/(1 + q^4), -(q^14/(1 + q^4))}}, {{-q^10, 0, 0, 0, 0, 0}, {0, (q^6*(1 - q^2 + q^4 - q^6 + q^8))/(1 + q^4 + q^8 + q^12), 0, -((q^6*(1 + q^4))/(1 + q^2 + q^4)), (q^14*(1 + 2*q^4 - q^6 + 2*q^8 + q^12))/(1 + q^2 + 2*q^4 + q^6 + 2*q^8 + q^10 + 2*q^12 + q^14 + q^16), 0}, {0, 0, q^6/(1 + q^4 + q^8 + q^12), 0, 0, -((q^8*(1 + q^2 + 3*q^4 + 2*q^6 + 4*q^8 + 3*q^10 + 4*q^12 + 2*q^14 + 3*q^16 + q^18 + q^20))/(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20))}, {0, -((q^8*(1 + q^4 + q^8))/(1 + q^4 + q^8 + q^12)), 0, (q^8*(1 - q^2 + q^4 - q^6 + q^8))/(1 + q^4 + q^8), (q^18*(1 + 2*q^4 - q^6 + 2*q^8 + q^12))/(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20), 0}, {0, (q^10*(1 + 2*q^4 + 3*q^8 + q^10 + 3*q^12 + q^14 + 3*q^16 + q^18 + 3*q^20 + 2*q^24 + q^28))/(1 + 3*q^4 - q^6 + 5*q^8 - q^10 + 6*q^12 - q^14 + 5*q^16 - q^18 + 3*q^20 + q^24), 0, (q^12*(1 + q^4)*(1 + q^4 + q^8 + q^10 + q^12 + q^16 + q^20))/(1 + 3*q^4 - q^6 + 5*q^8 - q^10 + 5*q^12 - q^14 + 3*q^16 + q^20), (q^24*(1 + 2*q^4 - q^6 + 2*q^8 + q^12))/(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20), 0}, {0, 0, -((q^8*(1 - q^2 + 3*q^4 - 3*q^6 + 6*q^8 - 5*q^10 + 7*q^12 - 5*q^14 + 6*q^16 - 3*q^18 + 3*q^20 - q^22 + q^24))/(1 + 3*q^4 - q^6 + 5*q^8 - q^10 + 6*q^12 - q^14 + 5*q^16 - q^18 + 3*q^20 + q^24)), 0, 0, -(q^22/(1 + q^4 + q^8 + q^12))}}}}}, {2 + q^(-12) + q^(-8) + q^(-6) + 2/q^4 + q^(-2) + q^2 + 2*q^4 + q^6 + q^8 + q^12, {{{{Power[q, -16], 0, 0, 0, 0, 0}, {0, -q^(-10), 0, 0, 0, 0}, {0, 0, Power[q, -6], 0, 0, 0}, {0, 0, 0, -q^(-10), 0, 0}, {0, 0, 0, 0, Power[q, -6], 0}, {0, 0, 0, 0, 0, Power[q, -6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(1/(q^2*(1 - q^2 + 2*q^4 - q^6 + q^8))), -(1/(q^4*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))), 0, 0, 0}, {-(((1 + q^4)*(1 + q^8))/(q^6*(1 + q^4 + q^6 + q^8 + q^12))), (1 - q^2 + q^4 - q^6 + q^8)/(q^12*(1 - q^2 + 2*q^4 - q^6 + q^8)), -(1/(q^10*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))), 0, 0, 0}, {-(((1 + q^4)*(1 + q^2 + q^4 + q^6 + 2*q^8 + 2*q^10 + 2*q^12 + q^14 + q^16 + q^18 + q^20))/(q^16*(1 + q^4 + q^6 + q^8 + q^12))), (-1 - q^2 - q^4 - q^6 - q^8 - q^10 - q^12)/(q^18*(1 - q^2 + 2*q^4 - q^6 + q^8)), (1 + q^2 + q^4)/(q^16*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)), 0, 0, 0}, {0, 0, 0, 1/(q^2*(1 + q^4)), 1/(q^6*(1 + q^4)), 0}, {0, 0, 0, (1 + q^4 + q^8)/(q^10*(1 + q^4)), -(1/(q^10*(1 + q^4))), 0}, {0, 0, 0, 0, 0, Power[q, -6]}}, {{Power[q, -6], 0, 0, 0, 0, 0}, {0, q^6/(1 + q^4 + q^8 + q^12), 0, (-1 + q^2 - q^4)/(q^4*(1 + q^4 + q^8 + q^12)), 0, 0}, {0, 0, (q^14*(1 + q^2 + q^4))/(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24), 0, -((q^2*(1 + q^2 + q^4 + q^6 + q^8))/(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20)), (1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)/(q^6*(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 3*q^12 + 2*q^14 + 2*q^16 + q^18 + q^20))}, {0, (-1 - q^2 - 2*q^4 - q^6 - 2*q^8 - q^10 - 2*q^12 - q^14 - 2*q^16 - q^18 - q^20)/(q^12*(1 + q^4 + q^8 + q^12)), 0, -(1/(q^10*(1 + q^4 + q^8 + q^12))), 0, 0}, {0, 0, -(((1 + q^2 + q^4 + q^6 + q^8)*(1 + q^4 - q^6 + q^8 + q^12))/(q^2*(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24))), 0, (1 - q^2 + 2*q^4 - q^6 + q^8 - q^10 + 2*q^12 - q^14 + q^16)/(q^12*(1 - q^2 + 2*q^4 - q^6 + 2*q^8 - q^10 + 2*q^12 - q^14 + q^16)), (1 + q^4)/(q^12*(1 + q^4 + q^6 + q^8 + q^10 + q^12 + q^16))}, {0, 0, ((1 + q^2 + q^4 + q^6 + q^8)*(1 + q^4 + q^8 + q^10 + q^12 + q^14 + q^16 + q^20 + q^24))/(q^14*(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24)), 0, (1 + q^6 + q^12)/(q^16*(1 - q^2 + 2*q^4 - q^6 + 2*q^8 - q^10 + 2*q^12 - q^14 + q^16)), 1/(q^16*(1 + q^4 + q^6 + q^8 + q^10 + q^12 + q^16))}}}, {{{Power[q, 16], 0, 0, 0, 0, 0}, {0, -q^10, 0, 0, 0, 0}, {0, 0, Power[q, 6], 0, 0, 0}, {0, 0, 0, -q^10, 0, 0}, {0, 0, 0, 0, Power[q, 6], 0}, {0, 0, 0, 0, 0, Power[q, 6]}}, {{q^6/(1 + q^4 + q^6 + q^8 + q^12), -(q^10/(1 - q^2 + 2*q^4 - q^6 + q^8)), -(q^16/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)), 0, 0, 0}, {-((q^6*(1 + q^4)*(1 + q^8))/(1 + q^4 + q^6 + q^8 + q^12)), (q^12*(1 - q^2 + q^4 - q^6 + q^8))/(1 - q^2 + 2*q^4 - q^6 + q^8), -(q^22/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12)), 0, 0, 0}, {-((q^4*(1 + q^4)*(1 + q^2 + q^4 + q^6 + 2*q^8 + 2*q^10 + 2*q^12 + q^14 + q^16 + q^18 + q^20))/(1 + q^4 + q^6 + q^8 + q^12)), -((q^14*(1 + q^2 + q^4 + q^6 + q^8 + q^10 + q^12))/(1 - q^2 + 2*q^4 - q^6 + q^8)), (q^24*(1 + q^2 + q^4))/(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12), 0, 0, 0}, {0, 0, 0, q^6/(1 + q^4), q^10/(1 + q^4), 0}, {0, 0, 0, (q^6*(1 + q^4 + q^8))/(1 + q^4), -(q^14/(1 + q^4)), 0}, {0, 0, 0, 0, 0, Power[q, 6]}}, {{Power[q, 6], 0, 0, 0, 0, 0}, {0, q^6/(1 + q^4 + q^8 + q^12), 0, -((q^12*(1 - q^2 + q^4))/(1 + q^4 + q^8 + q^12)), 0, 0}, {0, 0, (q^6*(1 + q^2 + q^4))/(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24), 0, -((q^10*(1 + q^2 + q^4 + q^6 + q^8))/(1 + 2*q^4 + 3*q^8 + 3*q^12 + 2*q^16 + q^20)), (q^14*(1 + q^2 + 2*q^4 + 2*q^6 + 2*q^8 + q^10 + q^12))/(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 3*q^12 + 2*q^14 + 2*q^16 + q^18 + q^20)}, {0, -((q^4*(1 + q^2 + 2*q^4 + q^6 + 2*q^8 + q^10 + 2*q^12 + q^14 + 2*q^16 + q^18 + q^20))/(1 + q^4 + q^8 + q^12)), 0, -(q^22/(1 + q^4 + q^8 + q^12)), 0, 0}, {0, 0, -((q^6*(1 + q^2 + 2*q^4 + q^6 + 2*q^8 + q^10 + 2*q^12 + q^14 + 2*q^16 + q^18 + q^20))/(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24)), 0, (q^12*(1 - q^2 + 2*q^4 - q^6 + q^8 - q^10 + 2*q^12 - q^14 + q^16))/(1 - q^2 + 2*q^4 - q^6 + 2*q^8 - q^10 + 2*q^12 - q^14 + q^16), (q^24*(1 + q^4))/(1 + q^4 + q^6 + q^8 + q^10 + q^12 + q^16)}, {0, 0, (q^6*(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 4*q^14 + 5*q^16 + 4*q^18 + 4*q^20 + 3*q^22 + 3*q^24 + 2*q^26 + 2*q^28 + q^30 + q^32))/(1 + q^2 + 2*q^4 + 2*q^6 + 3*q^8 + 3*q^10 + 4*q^12 + 3*q^14 + 3*q^16 + 2*q^18 + 2*q^20 + q^22 + q^24), 0, (q^20*(1 + q^6 + q^12))/(1 - q^2 + 2*q^4 - q^6 + 2*q^8 - q^10 + 2*q^12 - q^14 + q^16), q^32/(1 + q^4 + q^6 + q^8 + q^10 + q^12 + q^16)}}}}}, {3 + q^(-14) + q^(-12) + 2/q^10 + 2/q^8 + 3/q^6 + 3/q^4 + 4/q^2 + 4*q^2 + 3*q^4 + 3*q^6 + 2*q^8 + 2*q^10 + q^12 + q^14, {{{{-q^(-10), 0, 0}, {0, -q^(-10), 0}, {0, 0, Power[q, -6]}}, {{-q^(-10), 0, 0}, {0, 1/(q^2*(1 + q^4)), 1/(q^6*(1 + q^4))}, {0, (1 + q^4 + q^8)/(q^10*(1 + q^4)), -(1/(q^10*(1 + q^4)))}}, {{q^2/(1 + q^4 + q^8), -(1/(q^4*(1 + q^4 + q^8))), 0}, {(-1 - 2*q^4 - 2*q^8 - 2*q^12 - q^16)/(q^12*(1 + q^4 + q^8)), -(1/(q^10*(1 + q^4 + q^8))), 0}, {0, 0, -q^(-10)}}}, {{{-q^10, 0, 0}, {0, -q^10, 0}, {0, 0, Power[q, 6]}}, {{-q^10, 0, 0}, {0, q^6/(1 + q^4), q^10/(1 + q^4)}, {0, (q^6*(1 + q^4 + q^8))/(1 + q^4), -(q^14/(1 + q^4))}}, {{q^6/(1 + q^4 + q^8), -(q^12/(1 + q^4 + q^8)), 0}, {-((q^4*(1 + 2*q^4 + 2*q^8 + 2*q^12 + q^16))/(1 + q^4 + q^8)), -(q^18/(1 + q^4 + q^8)), 0}, {0, 0, -q^10}}}}}, {3 + q^(-16) + q^(-14) + q^(-12) + 2/q^10 + 3/q^8 + 2/q^6 + 3/q^4 + 3/q^2 + 3*q^2 + 3*q^4 + 2*q^6 + 3*q^8 + 2*q^10 + q^12 + q^14 + q^16, {{{{-q^(-10), 0}, {0, Power[q, -6]}}, {{1/(q^2*(1 + q^4)), 1/(q^6*(1 + q^4))}, {(1 + q^4 + q^8)/(q^10*(1 + q^4)), -(1/(q^10*(1 + q^4)))}}, {{-q^(-10), 0}, {0, Power[q, -6]}}}, {{{-q^10, 0}, {0, Power[q, 6]}}, {{q^6/(1 + q^4), q^10/(1 + q^4)}, {(q^6*(1 + q^4 + q^8))/(1 + q^4), -(q^14/(1 + q^4))}}, {{-q^10, 0}, {0, Power[q, 6]}}}}}, {7 + q^(-20) + q^(-18) + 2/q^16 + 2/q^14 + 4/q^12 + 4/q^10 + 5/q^8 + 5/q^6 + 7/q^4 + 6/q^2 + 6*q^2 + 7*q^4 + 5*q^6 + 5*q^8 + 4*q^10 + 4*q^12 + 2*q^14 + 2*q^16 + q^18 + q^20, {{{{-q^(-10), 0, 0}, {0, Power[q, -6], 0}, {0, 0, Power[q, -6]}}, {{1/(q^2*(1 + q^4)), 1/(q^6*(1 + q^4)), 0}, {(1 + q^4 + q^8)/(q^10*(1 + q^4)), -(1/(q^10*(1 + q^4))), 0}, {0, 0, Power[q, -6]}}, {{Power[q, -6], 0, 0}, {0, q^2/(1 + q^4 + q^8), (1 + q^4)/(q^6*(1 + q^4 + q^8))}, {0, ((1 + q^4)*(1 + q^8))/(q^10*(1 + q^4 + q^8)), -(1/(q^10*(1 + q^4 + q^8)))}}}, {{{-q^10, 0, 0}, {0, Power[q, 6], 0}, {0, 0, Power[q, 6]}}, {{q^6/(1 + q^4), q^10/(1 + q^4), 0}, {(q^6*(1 + q^4 + q^8))/(1 + q^4), -(q^14/(1 + q^4)), 0}, {0, 0, Power[q, 6]}}, {{Power[q, 6], 0, 0}, {0, q^6/(1 + q^4 + q^8), (q^10*(1 + q^4))/(1 + q^4 + q^8)}, {0, (q^6*(1 + q^4)*(1 + q^8))/(1 + q^4 + q^8), -(q^18/(1 + q^4 + q^8))}}}}}, {5 + q^(-24) + q^(-20) + q^(-18) + 2/q^16 + q^(-14) + 3/q^12 + 2/q^10 + 4/q^8 + 3/q^6 + 4/q^4 + 3/q^2 + 3*q^2 + 4*q^4 + 3*q^6 + 4*q^8 + 2*q^10 + 3*q^12 + q^14 + 2*q^16 + q^18 + q^20 + q^24, {{{{Power[q, -6]}}, {{Power[q, -6]}}, {{Power[q, -6]}}}, {{{Power[q, 6]}}, {{Power[q, 6]}}, {{Power[q, 6]}}}}}}
BraidingData[Subscript[B, 2]][Irrep[Subscript[B, 2]][{1, 1}], 2]:={{1, {{{{-q^(-30)}}}, {{{-q^30}}}}}, {1 + q^(-6) + q^(-2) + q^2 + q^6, {{{{-q^(-26)}}}, {{{-q^26}}}}}, {2 + q^(-8) + q^(-6) + q^(-4) + q^(-2) + q^2 + q^4 + q^6 + q^8, {{{{Power[q, -24], 0}, {0, Power[q, -24]}}}, {{{Power[q, 24], 0}, {0, Power[q, 24]}}}}}, {2 + q^(-12) + q^(-8) + q^(-6) + 2/q^4 + q^(-2) + q^2 + 2*q^4 + q^6 + q^8 + q^12, {{{{-q^(-20)}}}, {{{-q^20}}}}}, {3 + q^(-14) + q^(-12) + 2/q^10 + 2/q^8 + 3/q^6 + 3/q^4 + 4/q^2 + 4*q^2 + 3*q^4 + 3*q^6 + 2*q^8 + 2*q^10 + q^12 + q^14, {{{{-(1/(q^14*(1 + q^2 + q^4 + q^6 + q^8))), (1 + 2*q^2 + 2*q^4 + 2*q^6 + q^8)/(q^18*(1 + q^2 + q^4 + q^6 + q^8))}, {(1 + q^4 + q^8)/(q^18*(1 + q^2 + q^4 + q^6 + q^8)), 1/(q^14*(1 + q^2 + q^4 + q^6 + q^8))}}}, {{{-(q^22/(1 + q^2 + q^4 + q^6 + q^8)), (q^18*(1 + 2*q^2 + 2*q^4 + 2*q^6 + q^8))/(1 + q^2 + q^4 + q^6 + q^8)}, {(q^18*(1 + q^4 + q^8))/(1 + q^2 + q^4 + q^6 + q^8), q^22/(1 + q^2 + q^4 + q^6 + q^8)}}}}}, {3 + q^(-16) + q^(-14) + q^(-12) + 2/q^10 + 3/q^8 + 2/q^6 + 3/q^4 + 3/q^2 + 3*q^2 + 3*q^4 + 2*q^6 + 3*q^8 + 2*q^10 + q^12 + q^14 + q^16, {{{{-q^(-14)}}}, {{{-q^14}}}}}, {2 + q^(-18) + q^(-14) + q^(-12) + 2/q^10 + q^(-8) + 3/q^6 + 2/q^4 + 3/q^2 + 3*q^2 + 2*q^4 + 3*q^6 + q^8 + 2*q^10 + q^12 + q^14 + q^18, {{{{-q^(-12)}}}, {{{-q^12}}}}}, {7 + q^(-20) + q^(-18) + 2/q^16 + 2/q^14 + 4/q^12 + 4/q^10 + 5/q^8 + 5/q^6 + 7/q^4 + 6/q^2 + 6*q^2 + 7*q^4 + 5*q^6 + 5*q^8 + 4*q^10 + 4*q^12 + 2*q^14 + 2*q^16 + q^18 + q^20, {{{{Power[q, -10]}}}, {{{Power[q, 10]}}}}}}
End[]
EndPackage[]