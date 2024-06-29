if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-50A";
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
if(x!=2) draw((x, y)--(x+1, y), Arrow, L=Label("$1$", MidPoint, align=N));
if(y!=2) draw((x, y)--(x, y+1), Arrow, L=Label("$i$", MidPoint, align=W));
}
}
draw(shift(0.1, -0.1)*((-2, -1)--(0, -1)--(0, 0)), arrow=Arrow, purple, L=Label("$c$", MidPoint, align=S));
graph.xaxis(xmin=-2.8, xmax=2.8);
graph.yaxis(ymin=-2.8, ymax=2.8);
label("$\operatorname{Re} z$", (2.8, 0), S);
label("$\operatorname{Im} z$", (0, 2.8), E);
