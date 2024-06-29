if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-52I";
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
draw((1, 0)--(5, 0));
label("$1$", (1, 0), align=SW);
label("$5$", (5, 0), align=SW);
for(int x=1; x<=5; ++x){
draw((x, -4.2)--(x, 4.2), purple);
}
for(int i=-7; i<=7; ++i) if(i!=0){
var y=abs(i)^0.7*(i<0 ? -1: 1);
draw((1-0.2, y)--(5.2, y), purple);
}
opendot((1, 0));
opendot((5, 0));
