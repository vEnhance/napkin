if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-62B";
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
bigbox("$G$");
pen b = lightcyan + opacity(0.4);
pen k = black;
filldraw( (-2.6,2.5)--(0.6,2.5)--(0.6,0.5)--(-2.6,0.5)--cycle, b, k);
filldraw( (-2.6,-2.5)--(0.6,-2.5)--(0.6,-0.5)--(-2.6,-0.5)--cycle, b, k);
filldraw( (2,0)--(3.5,0)--(3.5,2.5)--(2,2.5)--cycle, b, k);
filldraw( (2,-1)--(3.5,-1)--(3.5,-2)--(2,-2)--cycle, b, k);
for (real x = -2; x < 1; ++x) {
dot( (x, 1.9) );
dot( (x, 1.1) );
dot( (x, -1.9) );
dot( (x, -1.1) );
}
label("$37.5\%$", (-2.6, 0.5), dir(140));
label("$37.5\%$", (-2.6,-2.5), dir(140));
label("$C_1$", (-2.6, 2.5), dir(225));
label("$C_2$", (-2.6, -.5), dir(225));
dot( (2.75, 2.0) );
dot( (2.75, 1.25) );
dot( (2.75, 0.50) );
dot( (2.75, -1.50) );
label("$C_3$", (2, 0), dir(-90));
label("$18.75\%$", (3, 0), dir(-75));
label("$C_4$", (2, -2), dir(-90));
label("$6.25\%$", (3, -2), dir(-75));
