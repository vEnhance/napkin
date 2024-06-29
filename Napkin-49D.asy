if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-49D";
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
draw(unitcircle, blue);
label("$X$", (1, 1)/sqrt(2), blue, align=NE);
label((1.7, 0), "$\lhook\joinrel\xrightarrow{\quad \iota \quad}$");
draw(shift(2.4)*scale(3.4)*shift(0, -0.5)*unitsquare);
label("$\mathbb{R}^2$", shift(2.4)*scale(3.4)*shift(0, -0.5)*(1, 1), align=E);
draw(shift(2.4)*scale(3.4)*shift(0.5, 0)*scale(1/3.4)*unitcircle, blue);
