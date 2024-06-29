if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-5C";
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
dot((x, y), q==(round(q.x), round(q.y)) ? red: mediumgray);
}
graph.xaxis(xmin=-7.4, xmax=7.4, "$x$");
graph.yaxis(ymin=-7.4, ymax=7.4, "$y$");
