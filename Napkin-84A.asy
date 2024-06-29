if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-84A";
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

graph.xaxis();
graph.yaxis();
real f(real x) { return x*x; }
graph.xaxis("$x$");
graph.yaxis("$y$");
draw(graph(f,-2,2,operator ..), red+dotted, Arrows(TeXHead));
dot("$(y-x^2)$", (1.4, f(1.4)), dir(-45), red);
dot("$(x+1,y-1)$", (-1,1), dir(225), blue);
