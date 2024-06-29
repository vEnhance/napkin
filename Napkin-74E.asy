if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-74E";
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

filldraw(shift(0, 3)*polygon(3), lightcyan, lightred+1.5);
draw(dir(-30)--dir(90) , lightred+1.5, Arrow(size=5));
draw(dir(90)--dir(210) , lightred+1.5, Arrow(size=5), L=Label("$e^1_\beta$", red));
draw(dir(210)--dir(-30), lightred+1.5, Arrow(size=5));
draw((0, 2.25)--(0, 1.2), Arrow, L=Label("$d_2$", MidPoint, align=E));
label("$\in \operatorname{Cells}_2(X)$", (0.9, 3.2), align=E);
label("$\in \operatorname{Cells}_1(X)$", (0.9, 0.2), align=E);
label("$e^2$", (0, 3));
