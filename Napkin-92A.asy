if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-92A";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import extras;
size(6cm);
usepackage("amsmath");
usepackage("amssymb");
defaultpen(fontsize(11pt));
settings.tex = "latex";
settings.outformat = "pdf";

size(14cm);
pair A = (12,30);
pair B = -conj(A);
pair M = midpoint(A--B);
pair O = origin;
MP("V", A, dir(10));
draw(A--O--B);

fill(A--O--B--cycle, opacity(0.3)+palecyan);
MP("M", 0.7*M, 3*dir(0)+dir(45));

MP("V_0 = \varnothing", origin, dir(-20));
MP("V_1 = \{\varnothing\}", 0.05*A, dir(0));
MP("V_2 = \{\varnothing, \{\varnothing\} \}", 0.10*A, dir(0));

pair A1 = 0.4*A;
pair B1 = 0.4*B;
draw(MP("V_\omega", A1, dir(0))--B1);
draw(MP("V_{\omega+1} = \mathcal P(V_\omega)", 0.45*A, dir(0))--0.45*B);
Drawing("\omega", 0.45*M, dir(45));

filldraw(O--A1--(A1+0.15*M)..(0.7*M)..(B1+0.15*M)--B1--cycle,
opacity(0.3)+lightgreen, heavygreen+1);
draw(O--0.7*M, heavygreen+1);

Drawing("\aleph_1^V", 0.80*M, dir(0));
Drawing("\aleph_2^V", 0.90*M, dir(0));
Drawing("\aleph_1^M", 0.55*M, dir(0));
Drawing("\aleph_2^M", 0.60*M, dir(0));

pair F = 0.6*B+0.15*A;
Drawing("f", F, dir(135));
draw(F--0.55*M, dotted, EndArrow, Margins);
draw(F--0.45*M, dotted, EndArrow, Margins);

draw(0.7*M--M);
MP("\mathrm{On}^V", M, dir(90));
MP("\mathrm{On}^M", 0.7*M, dir(135));
