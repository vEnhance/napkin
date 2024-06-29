if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-94A";
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
pair P = Drawing("\varnothing", (0,4), dir(90), red);
pair P0 = Drawing("0", (-5,2), 1.5*dir(90), red);
pair P1 = Drawing("1", (5,2), 1.5*dir(90));
pair P00 = Drawing("00", (-7,0), 1.4*dir(120));
pair P01 = Drawing("01", (-3,0), 1.4*dir(60), red);
pair P10 = Drawing("10", (3,0), 1.4*dir(120));
pair P11 = Drawing("11", (7,0), 1.4*dir(60));

pair P000 = Drawing("000", (-8,-3));
pair P001 = Drawing("001", (-6,-3));
pair P010 = Drawing("010", (-4,-3), red);
pair P011 = Drawing("011", (-2,-3));

pair P100 = Drawing("100", (2,-3));
pair P101 = Drawing("101", (4,-3));
pair P110 = Drawing("110", (6,-3));
pair P111 = Drawing("111", (8,-3));

draw(P01--P0--P00);
draw(P11--P1--P10);
draw(P0--P--P1);
draw(P000--P00--P001);
draw(P100--P10--P101);
draw(P010--P01--P011);
draw(P110--P11--P111);

draw(P--P0--P01--P010--(P010+2*dir(-90)), red+1.4);
MP("G", P010+2*dir(-90), dir(-90), red);
