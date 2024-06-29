if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-45B";
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
bigblob("$U$");
pair p = (-1,0);
dot("$p$", p, dir(90), red);
pair p1 = p + 1.4*dir(150);
pair p2 = p + 1.7*dir(-50);
draw(p--p1, red, EndArrow);
draw(p--p2, red, EndArrow);

add(scale(0.8)*shift(14*dir(180))*CC());
bigblob("$U'$");
pair q = (-0.5,0.5);
dot("$q = \phi(p)$", q, dir(90), blue);
pair q1 = q + 1.8*dir(-100);
pair q2 = q + 2.3*dir(-10);
draw(q--q1, blue, EndArrow);
draw(q--q2, blue, EndArrow);

draw((-9,0)--(-3,0), EndArrow);
label("$\phi$", (-6,0), dir(90));

draw( (0,-4)--(0,-8), EndArrow );
label("$\alpha$", (0,-6), dir(0));
label("$\alpha_q(\dots) \in \mathbb R$", (0,-9), heavygreen);

draw( (-11,-3)--(-1,-8), EndArrow);
label("$\phi^\ast \alpha$", (-6,-6), dir(225));
