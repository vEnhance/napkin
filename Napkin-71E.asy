if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-71E";
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

size(10cm);

pen rr = red;
pen hg = heavygreen;
pen gr = grey + dashed;

label("$\underbrace{g(\sigma) - f(\sigma)} = \underbrace{\partial_Y(P_n(\sigma))} +
\underbrace{P_{n-1}(\partial_X(\sigma))}$", (4, 9));

draw((1.7, 8.6)--(1.5, 8.2), Arrow);
draw((3.95, 8.6)--(4, 8.2), Arrow);
draw((6.2, 8.6)--(7, 8.2), Arrow);

draw((0, 8){dir(-70)}..(0, 6), rr, L="$f(\sigma)$");
draw((2, 8){dir(-70)}..(2, 6), hg, L="$g(\sigma)$");
label("$=$", (2.5, 7));

draw((3, 8){dir(-70)}..(3, 6), rr);
draw((5, 8){dir(-70)}..(5, 6), hg);
draw((3, 8)--(5, 8), gr);
draw((3, 6)--(5, 6), gr);
label("$+$", (5.5, 7));

draw((6, 8)--(8, 8), gr);
draw((6, 6)--(8, 6), gr);

fill((3, 5){dir(-70)}..(3, 3)--(5, 3){dir(70)}..(5, 5)--cycle, lightblue+opacity(0.2));
draw((3, 5){dir(-70)}..(3, 3), rr);
draw((5, 5){dir(-70)}..(5, 3), hg);
draw((3, 5)--(5, 5), gr);
draw((3, 3)--(5, 3), gr);
draw((4, 5.1)--(4, 5.9), Arrow, L="$\partial_Y$");

dot((7, 3), gr);
dot((7, 5), gr);
draw((7, 5.1)--(7, 5.9), Arrow, L="$P_0$");

draw((5.5, 0){dir(70)}..(5.5, 2), L=Label("$\sigma$", Relative(0.8)));
draw((5.4, 2.1)--(4.2, 2.9), Arrow, L="$P_1$");
draw((5.6, 2.1)--(6.8, 2.9), Arrow, L="$\partial_X$");
