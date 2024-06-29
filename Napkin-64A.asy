if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64A";
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

size(8cm);
draw(dir(0)--dir(180), blue);
dot(dir(0), red+4);
dot(dir(180), red+4);
label("$S^0$", dir(0), dir(90), red);
label("$D^1$", dir(0)--dir(180), blue);
add(shift(-4,0)*CC());
unitsize(2cm);
filldraw(unitcircle, lightblue+opacity(0.2), red);
label("$D^2$", origin, blue);
label("$S^1$", dir(45), dir(45), red);
