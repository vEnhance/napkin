if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-44D";
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

bigblob("$U$");
dot("$3$", (-2,1), red);
dot("$\sqrt2$", (-1,-1), red);
dot("$-1$", (2,2), red);
dot("$0$", (-3,-3), red);
draw((-1,-1)--(0,1), blue, EndArrow);
label("$\sqrt2 + \varepsilon$", (0,1), dir(90), blue);
label("$v$", (-0.5, 0), dir(0), blue);
