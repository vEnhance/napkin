if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-85A";
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

graph.xaxis("$\mathcal{V}(y)$", red);
graph.yaxis("$\mathcal{V}(x)$", red);
fill(box( (-3,-3), (3,3) ), opacity(0.2)+lightcyan);
opendot(origin, blue+1.5);
label("$\mathfrak m = (x,y)$", origin, dir(45), blue);
