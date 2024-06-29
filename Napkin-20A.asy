if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-20A";
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
draw(unitcircle);
draw(scale(2) * unitcircle);
for (int d = 90; d < 360 + 90; d += 72) {
draw(2*dir(d) --dir(d));
dot(dir(d));
dot(2*dir(d));
}
label("$A$", 0.95*dir(90), -dir(90));
