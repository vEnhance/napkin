if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-74C";
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

size(5cm);
for(int i=0; i<4; ++i){
filldraw(rotate(i*90)*((3, -3)--(3, 3)--(1, 1)--(1, -1)--cycle), lightcyan, lightred+1.5);
draw(rotate(i*90)*((1, -1)--(3, 3)), lightred+1.5);
}
label("$X$", (2.5, -1));
label("$X^1$", (3, 3), lightred, align=SE);
