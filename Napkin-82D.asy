if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-82D";
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
filldraw(shift(-0.5,0)*unitcircle, lightred+opacity(0.3), red);
filldraw(shift( 0.5,0)*unitcircle, lightblue+opacity(0.3), blue);
label("$U$", (-0.5,0)+dir(135), dir(135), red);
label("$V$", ( 0.5,0)+dir(45), dir(45), blue);
