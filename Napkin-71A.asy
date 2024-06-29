if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-71A";
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
bigblob("$X$");
dot("$\sigma^0$", (-3.7,2.5), dir(-90));

pen hg = heavygreen;
pair A0 = (-2.7, 1.1);
pair A1 = (-2.9, -2.3);
dot("$v_0$", A0, dir(90), hg);
dot("$v_1$", A1, dir(-90), hg);
path s1 = A0..(-3.1,0.7)..A1;
draw(s1, hg, EndArrow);
label("$\sigma^1$", s1, dir(10), hg);

pen rr = red;
pair B0 = (1, 1.8);
pair B1 = (-0.7, -1.1);
pair B2 = (1.9, -1.9);
dot("$v_0$", B0, dir(90), rr);
dot("$v_1$", B1, dir(210), rr);
dot("$v_2$", B2, dir(330), rr);
pair b0 = (0,0);
pair b1 = (0,-2);
pair b2 = (1.6,0.3);
draw(B0..b0..B1, rr, EndArrow);
draw(B1..b1..B2, rr, EndArrow);
draw(B2..b2..B0, rr, EndArrow);
fill(B0..b0..B1--B1..b1..B2--B2..b2..B0--cycle, lightred+opacity(0.2));
label("$\sigma^2$", (B0+B1+B2)/3, rr);
