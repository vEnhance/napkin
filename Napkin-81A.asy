if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-81A";
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

size(13cm);
bigblob("$X$");
pair p = (0.5,0);
filldraw(CR(p, 1), opacity(0.2)+lightgreen, deepgreen+dashed);
label("$f^{\text{pre}}(U)$", p+dir(135), dir(135), deepgreen);

transform t = scale(0.8) * shift(14*dir(180));
add(t * CC());
p = t*p;

bigblob("$Y$");
pair q = (0,0.5);
filldraw(CR(q, 1.2), opacity(0.2)+lightred, red+dashed);
label("$U$", q+1.2*dir(45), dir(45), red);

draw( (-9,0.5)--(-3,0.5), EndArrow);
label("$f$", (-6,0.5), dir(90));

draw(q--(0,-8), red, EndArrow);
label("$\phi \in \mathcal O_Y(U)$", (0,-6), dir(0), red);
label(scale(2.718)*"$\mathbb C$", (0,-9), black);

draw( p--(-0.5,-8), deepgreen, EndArrow);
label("$f^\sharp \phi \in \mathcal O_X(f^{\text{pre}}(U))$",
(p+(-0.5,-8))/2, dir(225), deepgreen);
