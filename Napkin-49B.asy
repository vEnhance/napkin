if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-49B";
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

draw((-2, -2)--(2, 2), red, L=Label("$x^2-y^2=0$", EndPoint, align=N));
draw((-2, 2)--(2, -2), red);
graph.xaxis("$x$");
graph.yaxis("$y$");
