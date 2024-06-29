if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-78B";
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
pen bloo = blue+1.5;
draw(A--B, blue, Arrows);
draw(A--B, bloo);
// label("$\mathbb V()$", (0,0), 2*dir(-90));
opendot((-3,0), bloo);
opendot((-1,0), bloo);
opendot((4,0), bloo);
label("$\mathbb A^1$", B-(2,0), dir(90));
