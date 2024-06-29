if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-7A";
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
bigblob("$X$");
pair p = Drawing("x", (0.3,0.1), dir(-90));
real r = 1.55;
draw(shift(p) * scale(1.6,1.2)*unitcircle, dashed);
label("$U$", p+r*dir(45), dir(45));
