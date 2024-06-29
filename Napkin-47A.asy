if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-47A";
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

size(8cm);
draw((0, 5)--(8, 5), black+2);
dotfactor*=2;

void drawsegment(pair a, pair b, Label L, pen p=defaultpen){
draw(a--b, p); opendot(a, p); opendot(b, p);
label((a+b)/2, L, S, p);
}

var a=(3, 4), b=(5, 4);
draw(a--b, black+2); opendot(a); opendot(b);

label((4, 4.5), rotate(90)*Label("$\subseteq$"));
label((3, 5), "$0$", S);
label((5, 5), "$2$", S);
var E1l=(1, 1), E2l=(5.7, 1), E2r=E2l+(1.3, 0);
drawsegment(E1l,(3, 1), "$E_1$", blue);
drawsegment(E2l,E2r, "$E_2$", red);

var v=(2/6, 0);
for(int i=0; i<=6;++i){
draw(a+i*v--E1l+i*v, blue, Arrow, Margin(2));
draw(a+i*v--E2l+(i<=3 ? i*v: 3*v+(i-3)*(0.1, 0)), red, Arrow, Margin(2));
}
label((8, 5), "$\mathbb{R}$", NW);

label((a+E1l)/2, "$\phi_1$", blue, align=NW);
label((b+E2r)/2, "$\phi_2$", red, align=NE);
