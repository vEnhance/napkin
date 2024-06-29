if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-75F";
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

size(0); unitsize(2cm);
fill(unitsquare, yellow+opacity(0.2));
pair C = (0,0);
pair B = (1,0);
pair A = (1,1);
pair D = (0,1);
draw(A--B, red, MidArrow);
draw(C--B, blue, MidArrow);
draw(D--C, red, MidArrow);
draw(A--D, blue, MidArrow);
draw(A--C, Arrow, L="$1$");

A+=(2, 0);
B+=(2, 0);
C+=(2, 0);
D+=(2, 0);
draw((1.1, 0.5)--(1.9, 0.5), Arrow, L="$\delta$");
fill(shift(2, 0)*unitsquare, yellow+opacity(0.2));
draw(A--B, red, MidArrow);
draw(C--B, blue, MidArrow);
draw(D--C, red, MidArrow);
draw(A--D, blue, MidArrow);
draw(A--C);

label("$1$", (A+B+C)/3);
label("$-1$", (A+D+C)/3);
