if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-31G";
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

import graph;
draw(graph(new real(real x){ return 1/x; }, -3, -1/3), red);
draw(graph(new real(real x){ return 1/x; }, 1/3, 3), red);
draw((-1/2, -2){(1, -2)} .. tension 5 .. {(1, -2)}(1/2, 2), blue+dashed);
graph.xaxis();
graph.yaxis();
