if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-77B";
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
pair A = (-9,0); pair B = (9,0);
draw(A--B, Arrows);
label("$\mathcal V(x-9)$", (0,0), 2*dir(-90), blue);
dot("$9$", (3,0), dir(90), blue);
label("$\mathbb A^1$", A+(2,0), dir(90));
