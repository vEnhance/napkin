if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-56F";
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
for(int x=-8; x<=8; ++x){
for(int y=-20; y<=20; ++y){
pair p=x*I+y*(0.3-0.1I);
if(max(abs(p.x), abs(p.y))<=4.2){
dot(p, ((x, y)==(0, 1) ? red: blue));
}
}
}
graph.xaxis(-4.5, 4.5);
graph.yaxis(-4.5, 4.5);
