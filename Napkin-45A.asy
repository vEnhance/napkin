if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-45A";
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

size(8.5cm);
pair A = (-13,0);
pair B = (-9,0);
draw(A--B, grey);
dot(A, grey); dot(B, grey);
label("$[a,b]$", A--B, dir(90), grey);
dot("$t$", 0.3*A+0.7*B, dir(-90), grey);

draw( (-8,0) -- (-6,0) , EndArrow);
label("$c$", (-7,0), dir(90));

bigblob("$U$");
pair a = (-2,-2);
pair b = (3,0);
pair p = (0,1);
pair q = (2,0);
label("$c$", q, dir(45), red);
draw(a..p..q..b, red);
dot("$p = c(t)$", p, dir(90), blue);
draw(p--(p+1.5*dir(-10)), blue, EndArrow);

draw( (0,-4)--(0,-8), EndArrow );
label("$\alpha$", (0,-6), dir(0));
label("$\alpha_p(v) \in \mathbb R$", (0,-9), heavygreen);

draw( (-10,-1)--(-1,-8), EndArrow);
label("$c^\ast \alpha$", (-5.5,-4.5), dir(225));
