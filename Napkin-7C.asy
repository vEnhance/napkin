if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-7C";
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
draw(unitcircle, black+1);
MP("S^1", dir(60), dir(60));
MP("\mathbb R^2", dir(-45)*1.2, dir(-45));
pair A = dir(-30);
pair B = dir(50);
draw(CP(dir(10), A), dotted);
draw(arc(origin,A,B), blue+2);
dotfactor *= 2;
opendot(A, blue);
opendot(B, blue);
