if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-77D";
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

import graph;
graph.xaxis("$x$", -4, 4);
graph.yaxis("$y$", -4, 4);

real f (real x) { return x*x; }
draw(graph(f,-2,2,operator ..), blue);
label("$\mathcal V(y-x^2)$", (1,1), dir(-45), blue);
dot("$\mathcal V(x-1,y+2)$", (1,-2), dir(-45), red);
