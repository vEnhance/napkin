if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-47C";
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
graph.xaxis(xmin=-3, xmax=3);
graph.yaxis(ymin=-3, ymax=3);
filldraw(
(1, 2)..(2, 2)..(1, 3)..(-2, 2)..(-2, -2)..(1, -1)..(1, 0)..(0, 1)..cycle,
opacity(0.1)+lightcyan, heavycyan);
label("$U$", (1, 0), NE);
