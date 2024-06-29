if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-87A";
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
label("$\pi^{\text{pre}}(U)$", p+dir(135), dir(135), deepgreen);

transform t = scale(0.8) * shift(14*dir(180));
add(t * CC());
p = t*p;

bigblob("$Y$");
pair q = (0,0.5);
filldraw(CR(q, 1.2), opacity(0.2)+lightred, red+dashed);
label("$U$", q+1.2*dir(45), dir(45), red);

draw( (-9,0.5)--(-3,0.5), EndArrow);
label("$\pi$", (-6,0.5), dir(90));
label("$\boxed{f \in \mathcal O_Y(U)}$", (0,-5), red);
label("$\boxed{\pi^\sharp f \in \mathcal O_X(f^{\text{pre}}(U))}$",
t*(0,-6), deepgreen);
