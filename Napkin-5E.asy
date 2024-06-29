if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-5E";
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
var p=x+I*y, q=p/(2+I), r=(round(q.x), round(q.y));
if(abs(p-r*(2+I))==1){
dot(p, blue);
var x=(r*(2+I)).x, y=(r*(2+I)).y;
if(-7<=x && x<=7 && -7<=y && y<=7){
draw((r*(2+I))--p, Arrow, DotMargin);
}
}
}
for(int x=-7; x<=7; ++x)
for(int y=-7; y<=7; ++y){
var p=x+I*y, q=p/(2+I), r=(round(q.x), round(q.y));
if(q==r){
dot(p, red);
}
}
graph.xaxis(xmin=-7.9, xmax=7.9, "$x$");
graph.yaxis(ymin=-7.9, ymax=7.9, "$y$");
