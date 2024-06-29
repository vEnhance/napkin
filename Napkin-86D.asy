if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86D";
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

size(4cm);
draw("$k$", (-2,0)--(-2,5), dir(180), heavygreen);
draw("$k$", (2,0)--(2,5), heavygreen);
dot("$(x-3)$", (-2,0), dir(-90), blue);
dot("$(x-4)$", (2,0), dir(-90), blue);
label("$\operatorname{Spec} k[x]/(x^2-7x+12)$", (0,5), 2*dir(90));
