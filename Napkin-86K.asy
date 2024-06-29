if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86K";
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

size(7cm);
import graph;
graph.xaxis("$x$", -4, 4);
graph.yaxis("$y$", -4, 4);

real f (real x) { return 1/x; }
draw(graph(f,-4,-0.25,operator ..), blue);
draw(graph(f,0.25,4,operator ..), blue);
label("$\operatorname{Spec} k[x,y] / (xy-1)$", (1,1), dir(45), blue);

dot("$(0)$", (0.4,2), dir(225), red);
filldraw(CR( (0.4,2), 0.3 ), opacity(0.1)+lightred, red+dotted);
dot("$(x+2)$", (-2, f(-2)), dir(10), blue);
