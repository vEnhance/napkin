if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-81B";
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

real f (real x) { return 1/x; }
draw(graph(f,-4,-0.25,operator ..), blue);
draw(graph(f,0.25,4,operator ..), blue);
label("$\mathcal V(xy-1)$", (1,1), dir(45), blue);

draw( (0,-5)--(0,-8), heavygreen, EndArrow );

pair A = (-4,-9); pair B = (4,-9);
draw(A--B, red, Arrows);
// label("$\mathbb V()$", (0,0), 2*dir(-90));
opendot((0,-9), red+1.5);
label("$X$", B, dir(-90), red);
