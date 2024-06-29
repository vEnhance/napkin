if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-30B";
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
draw( (5, f(5))--(5, 0), red+dotted );
for (int i=0; i<10; ++i) {
filldraw(box( (i-5, 0), (i-4, f(i-5)) ),
opacity(0.1)+lightgreen, deepgreen);
dot( (i-5, f(i-5)), deepgreen);
}
draw(graph(f,-5.2,5.2,operator ..), blue, Arrows(TeXHead));
graph.xaxis();
graph.yaxis();
label("$a$", (-5,0), dir(-90), blue);
label("$b$", (5,0), dir(-90), blue);
