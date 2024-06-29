if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-44C";
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
filldraw( (-2,-2)--(-2,2)--(2,2)--(2,-2)--cycle,
opacity(0.4) + orange, red);
label("$c$", (2,2), dir(45), red);
for (real t = -1; t < 2; t += 1) {
draw( (-2,t)--(2,t), red );
draw( (t,-2)--(t,2), red );
}
pair p = (-1, -1);
dot("$p$", p, dir(225), blue);
pair v = p + dir(90);
pair w = p + dir(0);
draw(p--v, blue, EndArrow);
draw(p--w, blue, EndArrow);
label("$v$", v, dir(135), blue);
label("$w$", w, dir(-45), blue);
