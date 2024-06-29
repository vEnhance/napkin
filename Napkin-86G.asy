if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86G";
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

real f(real x) { return x*x; }
graph.xaxis("$x$");
graph.yaxis("$y$");
draw(graph(f,-2,2,operator ..), red+dotted, Arrows(TeXHead));
dot("$(y-x^2)$", (1.3, f(1.3)), dir(-45), red);
dot("$(x-1,y+2)$", (1,-2), dir(-45), blue);
pair O = (-3,3);
dot("$(0)$", O, dir(225), red);
filldraw(CR(O, 0.8), opacity(0.2)+lightred, dotted+red);
