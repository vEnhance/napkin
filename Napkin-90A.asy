if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-90A";
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

size(11cm);
pair A = (12,30);
pair B = -conj(A);
pair M = midpoint(A--B);
pair O = origin;
MP("V", A, dir(10));
draw(A--O--B);

fill(A--O--B--cycle, opacity(0.3)+palecyan);

MP("V_0 = \varnothing", origin, dir(-20));
MP("V_1 = \{\varnothing\}", 0.05*A, dir(0));
MP("V_2 = \{\varnothing, \{\varnothing\} \}", 0.10*A, dir(0));

draw(MP("V_n", 0.3*A, dir(0))--0.3*B);
draw(MP("V_{n+1} = \mathcal P(V_n)", 0.35*A, dir(0))--0.35*B);
Drawing("n", 0.35*M, dir(45));

draw(MP("V_\omega = \bigcup V_n", 0.5*A, dir(0))--0.5*B);
draw(MP("V_{\omega+1} = \mathcal P(V_{\omega})", 0.55*A, dir(0))--0.55*B);
Drawing("\omega", 0.55*M, dir(45));
draw(MP("V_{\omega+2} = \mathcal P(V_{\omega+1})", 0.6*A, dir(0))--0.6*B);
Drawing("\omega+1", 0.6*M, dir(45));

draw(MP("V_{\omega+\omega}", 0.8*A, dir(0))--0.8*B);

draw(origin--M);
MP("\mathrm{On}", M, dir(90));

