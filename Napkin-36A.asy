if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-36A";
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
filldraw( (0,0)--(9,0)--(9,2)--(6,2)--(6,5)--(0,5)--cycle,
opacity(0.1)+lightcyan, heavycyan );
filldraw( (7,3)--(12,3)--(12,6)--(7,6)--cycle,
opacity(0.1)+lightcyan, heavycyan );
