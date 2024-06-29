if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-75B";
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
filldraw(scale(4)*unitsquare, yellow+opacity(0.1));
draw((1.5, 1)--(1, 3), L=Label("$-3$", align=SW), Arrow, DotMargin);
draw((1, 3)--(3, 2), L=Label("$1$", align=NE), Arrow, DotMargin);
draw((3, 2){dir(-170)}..(1.5, 1), L=Label("$2$"), Arrow, DotMargin);
draw((3, 2){dir(-120)}..(1.5, 1), L=Label("$2$", align=SE), Arrow, DotMargin);
