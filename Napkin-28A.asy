if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-28A";
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
size(8cm);
real f(real x) { return (x-2)*(x-2)/2 - 0.1; }
graph.xaxis("$x$");
graph.yaxis("$y$");
draw(graph(f,-1,5,operator ..), blue, Arrows);
pair P = (3, f(3));
dot("$(p, f(p))$", P, dir(-20), red);
draw((1.8,-0.8)--(4.2, 1.6), red);
label("Slope $f'(p)$", (4.2, 1.6), dir(-25), red);
pair Q = (4.3, f(4.3));
dot("$(p+h, f(p+h))$", Q, dir(-20), deepgreen);
draw(P--Q, dashed+deepgreen);
label("Slope $\frac{f(p+h)-f(p)}{h}$", P--Q, 1.5*dir(165), deepgreen);
