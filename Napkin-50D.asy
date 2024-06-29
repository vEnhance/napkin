if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-50D";
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
for(int x=-2; x<=2;++x){
for(int y=-2; y<=2;++y){
draw((x, y)--(x+0.2, y), Arrow, L=Label("\tiny $1$" , EndPoint, align=E*0.3));
draw((x, y)--(x, y+0.2), Arrow, L=Label("\tiny $-i$", EndPoint, align=N*0.3));
draw((x, y)--(x-0.2, y), Arrow, L=Label("\tiny $-1$", EndPoint, align=W*0.3));
draw((x, y)--(x, y-0.2), Arrow, L=Label("\tiny $i$" , EndPoint, align=S*0.3));
}
}
graph.xaxis(xmin=-2.8, xmax=2.8);
graph.yaxis(ymin=-2.8, ymax=2.8);
label("$\operatorname{Re} z$", (2.8, 0), S);
label("$\operatorname{Im} z$", (0, 2.8), E);
