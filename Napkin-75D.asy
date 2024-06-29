if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-75D";
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

size(3cm);
filldraw(scale(4)*unitsquare, yellow+opacity(0.1));
pair A=(1.5, 2);
draw(A+dir(45)*1.5--A, Arrow, DotMargin, L=Label("$1$"));
draw(A+dir(120)*1.5--A, Arrow, DotMargin, L=Label("$1$"));
draw(A+dir(-160)*1--A, Arrow, DotMargin, L=Label("$1$"));
draw(A--A+dir(-60)*2, red, Arrow, DotMargin, L=Label("$-1$"));
dot(A);
