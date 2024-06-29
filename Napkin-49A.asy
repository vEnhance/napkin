if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-49A";
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

draw((-2, -4)--(2, 4), red, L=Label("$x=2y$", EndPoint, align=E));
draw(unitcircle, blue, L=Label("$x^2+y^2=1$", Relative(0.13)));
graph.xaxis("$x$");
graph.yaxis("$y$");
