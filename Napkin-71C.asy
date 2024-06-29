if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-71C";
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
real r = 0.8;
pair a = dir(90);
pair b = dir(-90);

fill(unitcircle, lightblue+opacity(0.2));
unfill(CR( -(1-r)/2*a, (1+r)/2 ));

draw(arc(origin, a, -a), red);
draw(arc((r-1)*a/2, -a, r*a), red, EndArrow);

dot("$v_0=a$", r*a, dir(-90));
dot("$v_1=a$", a, dir(90));
dot("$v_2=b$", b, dir(-90));
label("$\gamma$", dir(135), dir(135), red);
draw(arc((r-1)*a/2, r*a, -a), blue, EndArrow);
draw(arc(origin, 1, 90, -90), heavygreen, EndArrow);
label("$c$", (1+r)/2*dir(180), dir(0), blue);
label("$d$", dir(0), dir(0), heavygreen);
