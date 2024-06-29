if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64F";
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
filldraw(unitcircle, opacity(0.2)+yellow, heavygreen);
dotfactor *= 1.4;
dot(dir(90), blue);
label("$e^0$", dir(90), dir(90), blue);
label("$e^1$", dir(-90), dir(-90), heavygreen);
label("$e^2$", origin, origin);
