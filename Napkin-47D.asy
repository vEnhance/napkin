if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-47D";
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

size(6cm);

filldraw(unitsquare, opacity(0.3)+lightcyan, heavycyan);
draw((-3.5, 0) -- (3.5, 0), Arrow);
draw((0, -3.5) -- (0, 3.5), Arrow);
for(int x=-3; x<=3; ++x) for(int y=-3; y<=3; ++y) dot((x, y), blue);
label((3, 3), "$L$", NE, blue);

draw((0.5, -3.5)--(0.5, -4.8), Arrow);
filldraw(shift(0, -6)*unitsquare, opacity(0.3)+lightcyan, heavycyan);
label((0, -6)+(1, 0.7), "$\mathbb{C}/L$", E, heavycyan);
