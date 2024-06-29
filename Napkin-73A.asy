if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-73A";
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

draw((0, 0)--(1, 0), L=Label("$X$", EndPoint, align=NE));
dot((0, 0), red);
for(int n=1; n<30; ++n){
dot((1/n, 0), red);
}

draw((1.5, 0)--(2.5, 0), Arrow, L="$q$");
for(int n=1; n<30; ++n){
draw(shift(3, 0)*scale(1/(2*n))*shift(1, 0)*unitcircle);
}
dot((3, 0), red);
label("$X/A$", (4.2, 0.5));
