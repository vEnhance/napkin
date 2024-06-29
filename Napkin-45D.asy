if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-45D";
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

size(7cm);
pen e1 = heavyred;
pen e2 = orange;
pen e3 = olive;
pen e4 = heavymagenta;
draw((0,0)--(2,0), e1, EndArrow);
draw((2,0)--(2,2), e2, EndArrow);
draw((2,2)--(0,2), e3, EndArrow);
draw((0,2)--(0,0), e4, EndArrow);
label("$r$", (2,0), dir(-45));
label("$\theta$", (0,2), dir(135));

label(scale(0.8)*"$[0,1]^2$", (1,1));
draw( (3,1)--(6,1), EndArrow);
label("$c$", (4.5,1), dir(90));

pair O = (9,1);
pair P = O + 2*dir(0);
fill(CP(O,P), palecyan);
real eps = 0.3;
draw(shift(0,eps) * (O--P), e1, EndArrow, Margins);
draw(shift(0,-eps) * (P--O), e3, EndArrow, Margins);
draw(CP(O,P), e2, EndArrow, Margins);
dot(O, e4+4);
