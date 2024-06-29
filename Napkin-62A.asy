if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-62A";
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

size(12cm);
filldraw( (-4,-2)--(-4,2)--(1.5,2)--(1.5,-2)--cycle, lightblue+opacity(0.2), black);
label("$G = \operatorname{Gal}(K/\mathbb Q)$", (-1,2), dir(90));
dot( (-1.1,-1.2) );
dot( (-1.4,0.9) );
dot( (-2,1.4) );
dot( (-2.7,-0.4) );
dot( (-3.1,0.2) );
dot( (-3.4,-1.6) );

filldraw(scale(0.8,1.8)*unitcircle, lightcyan+opacity(0.4), black);
label("$D_{\mathfrak p}$", (0.8,2), dir(-90));
for (real y=-1.5; y<2; ++y) { dot( (0,y) ); }
label("$\operatorname{Frob}_{\mathfrak p}$", (0,-1.5), dir(90));

filldraw(shift(5,0)*scale(0.8,1.8)*unitcircle, lightcyan+opacity(0.4), black);
for (real y=0.5; y<2; ++y) { dot( (5,y) ); }
dot("$T$", (5,-1.5), dir(45));
dot("$T^2$", (5,-0.5), dir(45));
draw( (1,0)--(4,0), Arrows );
label("$\left<T \mid T^f=1\right>$", (5,1.8), dir(90));

draw( (0.2,-1.5)--(4.8,-1.5), dashed, EndArrow);
label("$\theta(\operatorname{Frob}_{\mathfrak p}) = T$", (2.8,-1.5), dir(-90));
label("$\theta$", (2.5,0), dir(90));
label("$\cong$", (2.5,0), dir(-90));
