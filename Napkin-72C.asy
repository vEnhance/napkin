if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-72C";
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
draw(unitcircle);
draw(CR(2*dir(180),1), blue+2);
draw(arc(origin,1,135,225), blue+2);
label("$U$", 2*dir(180)+dir(135), dir(135), blue);
label("$S^1 \vee S^1$", dir(15), dir(15));
