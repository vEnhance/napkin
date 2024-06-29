if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-78C";
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
size(5cm);

real f(real x) { return x*x; }
graph.xaxis("$x$");
graph.yaxis("$y$");
draw(graph(f,-2,2,operator ..), blue, Arrows);
label("$\mathcal V(y-x^2)$", (0.8, f(0.8)), dir(-45));

opendot( (1,1), blue+1);
