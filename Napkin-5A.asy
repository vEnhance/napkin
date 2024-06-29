if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-5A";
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

size(4cm);
for(int x=-2; x<=2;++x){
for(int y=-2; y<=2;++y){
dot((x, y), blue);
}
}
for(var p: new pair[]{
(0.3, 0.4),
(-1.1, 1.6),
(-1.5, -1.5),
}){
dot(p, red);
draw(p--(round(p.x), round(p.y)), Arrow);
}
graph.xaxis(xmin=-2.4, xmax=2.4);
graph.yaxis(ymin=-2.4, ymax=2.4);
