if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-2C";
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
bigblob("$M$");
pair p = Drawing("p", (0.3,0.1), dir(-90));
real r = 1.8;
draw(CR(p,r), dashed);
label("$M_r(p)$", p+r*dir(-65), dir(-65));
draw(p--(p+r*dir(130)));
label("$r$", midpoint(p--(p+r*dir(130))), dir(40));
