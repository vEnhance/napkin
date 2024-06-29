if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-9A";
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

unitsize(0.7cm);
real d = 3;

filldraw(box( (-3*d/2,3.5), (-d/2,-4.5) ), opacity(0.1)+lightcyan, blue);
filldraw(box( (d/2,3.5), (3*d/2,-5.5) ), opacity(0.1)+lightred, red);

label(scale(1.5)*"$V$", (-d,4), blue);
dot("$e_1$", (-d,3), dir(180), blue);
dot("$e_2$", (-d,2), dir(180), blue);
label("$\vdots$", (-d,1), blue);
dot("$e_k$", (-d,0), dir(180), blue);
dot("$e_{k+1}$", (-d,-1), dir(180), blue);
dot("$e_{k+2}$", (-d,-2), dir(180), blue);
label("$\vdots$", (-d,-3), dir(180), blue);
dot("$e_n$", (-d,-4), dir(180), blue);

label(scale(1.5)*"$W$", (d,4), red);
dot("$f_1$", (d,3), dir(0), red);
dot("$f_2$", (d,2), dir(0), red);
label("$\vdots$", (d,1), red);
dot("$f_k$", (d,0), dir(0), red);
dot("$f_{k+1}$", (d,-1), dir(0), red);
dot("$f_{k+2}$", (d,-2), dir(0), red);
dot("$f_{k+3}$", (d,-3), dir(0), red);
label("$\vdots$", (d,-4), dir(0), red);
dot("$f_m$", (d,-5), dir(0), red);

label("$T$", (0,3), dir(90));
draw( (-d,3)--(d,3), EndArrow, Margin(3,3) );
draw( (-d,2)--(d,2), EndArrow, Margin(3,3) );
draw( (-d,0)--(d,0), EndArrow, Margin(3,3) );
draw( (-d,-1)--(0,-1), EndArrow, Margin(3,3) );
draw( (-d,-2)--(0,-2), EndArrow, Margin(3,3) );
draw( (-d,-4)--(0,-4), EndArrow, Margin(3,3) );
label("$0$", (0,-1));
label("$0$", (0,-2));
label("$0$", (0,-4));

draw( (5.5,3)--(6,3)--(6,0)--(5.5,0));
label("$\operatorname{im} T$", (6, 1.5), dir(0));
draw( (-5.5,-1)--(-6,-1)--(-6,-4)--(-5.5,-4) );
label("$\ker T$", (-6, -2.5), dir(180));
