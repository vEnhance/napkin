if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-75A";
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

size(4cm);
filldraw(scale(8, 6)*shift(-0.5, -0.5)*unitsquare, yellow+opacity(0.1));
pair A = (-3, 0);
pair B = (3, 0);
draw(A..(-2,0.5)..(0,2)..(1,1.2)..B, red);
draw(A--(-1,-1)--(2,-1)--B, blue);
draw(A--(-1,-2)--(2,-2)--B, orange);
dot("$p$", A, align=W);
dot("$q$", B, align=E);
filldraw(scale(0.5)*unitcircle, grey, black);
