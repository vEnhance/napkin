if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-86F";
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

size(6cm);
draw("$\mathbb Z / 4 \mathbb Z$", (-2,0)--(-2,7), dir(180), heavygreen);
draw("$\mathbb Z / 3 \mathbb Z$", (0,0)--(0,5), heavygreen);
draw("$\mathbb Z / 5 \mathbb Z$", (2,0)--(2,6), heavygreen);
dot("$(2)$", (-2,0), dir(-90), blue+5);
dot("$(3)$", ( 0,0), dir(-90), blue);
dot("$(5)$", ( 2,0), dir(-90), blue);
label("$\operatorname{Spec} \mathbb Z / 60 \mathbb Z$", (0,7), 2*dir(90));
