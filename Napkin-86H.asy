if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86H";
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
draw(graph(f,-2,2,operator ..), blue, Arrows(TeXHead));
label("$\operatorname{Spec} k[x,y]/(y-x^2)$", (0, f(0)), dir(-90), blue);
