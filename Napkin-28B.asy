if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-28B";
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
size(7cm);
real f(real x) { return 2-(x-2)*(x-2)/3; }
graph.xaxis("$x$");
graph.yaxis("$y$");
draw(graph(f,-1,5,operator ..), blue, Arrows);
pair P = (2, f(2));
dot("$(p, f(p))$", P, dir(90), red);
draw( (0.3,f(2))--(3.7,f(2)), red );
