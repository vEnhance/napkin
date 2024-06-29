if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-30C";
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
real f(real x) { return 3 + (x-2)*(x-2)*(x+5) / 35; }
real[] t = {-4.4, -3.3, -0.2, 1.3, 3.5, 4.5};
filldraw(box((-5,0), (-4.1,f(t[0]))), opacity(0.1)+lightcyan, heavycyan );
filldraw(box((-4.1,0), (-2,f(t[1]))), opacity(0.1)+lightcyan, heavycyan );
filldraw(box((-2,0), (0.6,f(t[2]))), opacity(0.1)+lightcyan, heavycyan );
filldraw(box((0.6,0), (1.9,f(t[3]))), opacity(0.1)+lightcyan, heavycyan );
filldraw(box((1.9,0), (3.7,f(t[4]))), opacity(0.1)+lightcyan, heavycyan );
filldraw(box((3.7,0), (5,f(t[5]))), opacity(0.1)+lightcyan, heavycyan );
for (int i=0; i<=5; ++i) { dot( (t[i], f(t[i])), blue ); }
draw(graph(f,-5.2,5.2,operator ..), blue, Arrows(TeXHead));
label("$\xi$", (t[1], f(t[1])), dir(90), blue);
graph.xaxis();
graph.yaxis();
label("$a$", (-5,0), dir(-90), blue);
label("$b$", (5,0), dir(-90), blue);
