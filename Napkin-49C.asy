if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-49C";
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
draw(unitcircle);
for(real x=-0.95; x<=0.56; x+=0.1){
real y=sqrt(1-x^2);
draw((x, y)--(x, 0), blue, Arrow);
dot((x, y), blue);
dot((x, 0), blue);
}
draw((-0.95, 0)--(0.55, 0), blue);
