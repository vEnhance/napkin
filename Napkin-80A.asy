if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-80A";
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
size(4cm);
real f(real x) { return x*x-1; }
graph.xaxis("$\mathcal V(y-z)$", red);
draw(graph(f,-2,2,operator ..), blue, Arrows);
label("$\mathcal V(zy-x^2)$", (1.4, f(1.4)), dir(15), blue);
label("$\mathbb{CP}^2$", (2,3), dir(45));
dotfactor *= 1.5;
dot(dir(0), heavygreen);
dot(dir(180), heavygreen);
