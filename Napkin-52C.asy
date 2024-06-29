if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-52C";
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
draw((-5, 0)--(5, 0), blue, Arrow, L=Label("$X$", EndPoint, align=N*1.5+W*0.8));
draw((0, -5)--(0, 5), Arrow);
for(int i=-4; i<=4; ++i){
draw((i, -5)--(i, 5), purple);
for(int j=-4; j<=4; ++j){
dot((i, j), purple);
}
}
dotfactor/=2;
