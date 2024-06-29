if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-56E";
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
for(int x=-4; x<=4; ++x){
for(int y=-4; y<=4; ++y){
dot((x, y), blue);
}
}
dot(2.3 - 3.1I, red);
graph.xaxis(-4.5, 4.5);
graph.yaxis(-4.5, 4.5);
