if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-52F";
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
for(int y=-4; y<=4; ++y) if(y!=0){
draw((1-0.2, y)--(5.2, y), purple);
}
opendot((1, 0));
opendot((5, 0));
