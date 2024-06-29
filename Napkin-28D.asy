if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-28D";
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
real f(real x) { return x*x/2 - 0.2; }
graph.xaxis("$x$");
graph.yaxis("$y$");
draw(graph(f,-2,2.5,operator ..), blue, Arrows);
pair A = (-1, f(-1));
pair B = (2, f(2));
dot("$(a, f(a))$", A, dir(A-B), deepgreen);
dot("$(b, f(b))$", B, dir(10), deepgreen);
draw(A--B, deepgreen);
label("Slope $\frac{f(b)-f(a)}{b-a}$", A--B, dir(120), deepgreen);
draw(A--(A.x,0), deepgreen+dashed);
draw(B--(B.x,0), deepgreen+dashed);
label("$a$", (A.x,0), dir(-90), deepgreen);
label("$b$", (B.x,0), dir(-90), deepgreen);

real c = (A.y-B.y) / (A.x-B.x);
pair C = (c, f(c));
dot("$(c, f(c))$", C, dir(-70), red);
draw( (c-1, f(c)-c)--(c+1, f(c)+c), red );
