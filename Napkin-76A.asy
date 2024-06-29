if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-76A";
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

fill(scale(2)*unitsquare, orange+opacity(0.2));
draw((0, 0)--(0, 2), blue, MidArrow);
draw((2, 0)--(2, 2), blue, MidArrow);
draw((0, 0)--(2, 0), red, MidArrow, L=Label("$dx$", black));
draw((0, 2)--(2, 2), red, MidArrow);

draw((0, 0.3)--(1, 0.7), Arrow, L="$\frac{1}{2}$");
draw((0, 1.1){dir(20)}..(2, 1.1), Arrow, L="$1$");
draw((0.5, 1.3){dir(70)}..(0.5, 1.9), Arrow, L="$0$");

fill(shift(3, 0)*scale(2)*unitsquare, orange+opacity(0.2));
draw((3, 0)--(3, 2), blue, MidArrow);
draw((5, 0)--(5, 2), blue, MidArrow);
draw((3, 0)--(5, 0), red, MidArrow, L=Label("$dy$", black));
draw((3, 2)--(5, 2), red, MidArrow);

draw((3, 1.1){dir(20)}..(5, 1.1), Arrow, L="$0$");
draw((4.2, 0){dir(70)}..(4.2, 2), Arrow, L="$1$");
