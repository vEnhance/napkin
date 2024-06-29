if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-31B";
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
draw(unitcircle, dashed);
void arrow(real theta) {
pair P = dir(theta);
dot(P);
pair delta = 0.4*P*dir(90);
draw( P--(P+delta), EndArrow );
}
arrow(0);
arrow(50);
arrow(140);
arrow(210);
arrow(300);
