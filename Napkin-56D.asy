if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-56D";
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
label("$(2)$", (1,0), dir(90));
for (int i=1; i <= 4; ++i) dot( (1, -i/4) );
label("$(3)$", (2,0), dir(90));
for (int i=1; i <= 6; ++i) dot( (2, -i/4) );
label("$(5)$", (3,0), dir(90));
for (int i=1; i <= 2; ++i) dot( (3, -i/4) );
label("$\dots$", (4,0), dir(90));
