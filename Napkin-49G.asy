if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-49G";
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
import graph;
import contour;
draw(contour(new real(real x, real y){ return x^3-x-y^2; }, (-3,-3), (3, 3), new real[]{0}), red);
graph.xaxis("$x$", -3, 3);
graph.yaxis("$y$", -3, 3);
