if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-46D";
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

size(5cm);
draw(unitcircle);
label("$S^1$", dir(140), dir(140));
pair p = dir(0);
draw( (1,-1.4)--(1,1.4), mediumblue, Arrows);
label("$T_p(M)$", (1, 1.4), dir(-45), mediumblue);
draw(p--(1,0.7), red, EndArrow);
label("$\vec v \in T_p(M)$", (1,0.7), dir(-15), red);
dot("$p$", p, p, blue);
