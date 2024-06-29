if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-31H";
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

void drawrect(real x1, real y1, real x2, real y2){
draw((x1, y1)--(x2, y1), MidArrow);
draw((x2, y1)--(x2, y2), MidArrow);
draw((x2, y2)--(x1, y2), MidArrow);
draw((x1, y2)--(x1, y1), MidArrow);
}
var margin=0.2, halfmargin=margin/2;
drawrect(0, 0, 6, 4);
drawrect(0+margin, 0+margin, 3-halfmargin, 2-halfmargin);
drawrect(3+halfmargin, 0+margin, 6-margin, 2-halfmargin);
drawrect(0+margin, 2+halfmargin, 3-halfmargin, 4-margin);
drawrect(3+halfmargin, 2+halfmargin, 6-margin, 4-margin);
label("$\gamma$", (6, 4), dir(45));
label("$\gamma_a$", (3-halfmargin, 4-margin), dir(-135));
label("$\gamma_b$", (6-margin, 4-margin), dir(-135));
label("$\gamma_c$", (3-halfmargin, 2-halfmargin), dir(-135));
label("$\gamma_d$", (6-margin, 2-halfmargin), dir(-135));
