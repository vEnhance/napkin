if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86E";
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

size(5cm);
draw("$k[x] / (x^2)$", (-2,0)--(-2,7), dir(180), heavygreen);
draw("$k$", (2,0)--(2,5), heavygreen);
dot("$(x)$", (-2,0), dir(-90), blue+5);
dot("$(x-5)$", (2,0), dir(-90), blue);
label("$\operatorname{Spec} k[x]/(x^3-5x^2)$", (0,7), 2*dir(90));
