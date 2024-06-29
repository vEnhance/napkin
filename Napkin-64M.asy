if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64M";
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

size(3cm);
dotfactor *= 2;
draw(dir(-90)..dir(0)..dir(90));
draw(dir(90)..dir(180)..dir(-90), dashed);
fill(unitcircle, yellow+opacity(0.2));
dot(dir(90));
opendot(dir(-90));
label("$\mathbb{RP}^2$", origin, origin);
