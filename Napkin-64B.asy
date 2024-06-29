if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64B";
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
dot("$-1$", dir(0), dir(90), red+4);
dot("$1$", dir(180), dir(90), red+4);
label("$D^1$", dir(0)--dir(180), blue);
add(shift(-4,0)*CC());
unitsize(2cm);
draw(unitcircle, blue);
label("$S^1 \approx D^1 / {\sim}$", dir(45), dir(45), blue);
dot("$-1 \sim 1$", dir(90), dir(90), red);
