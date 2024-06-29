if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-5D";
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
for(int x=-7; x<=7; ++x)
for(int y=-7; y<=7; ++y){
var q=(x+I*y)/(3+I);
var r=(round(q.x), round(q.y));
dot((x, y), q==r ? red: abs((x+I*y)-r*(3+I))<=1 ? blue: mediumgray);
}
graph.xaxis(xmin=-7.9, xmax=7.9, "$x$");
graph.yaxis(ymin=-7.9, ymax=7.9, "$y$");
