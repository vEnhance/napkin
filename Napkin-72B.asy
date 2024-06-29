if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-72B";
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

size(3cm);
label("$S^1$", dir(45), dir(45));
real R = 0.1;
/*
draw(arc(origin,1-R,-100,100), red+1);
label("$V$", (1-R)*dir(0), dir(180), red);
draw(arc(origin,1+R,80,280), blue+1);
label("$U$", (1+R)*dir(180), dir(180), blue);
*/
dot("$a$", dir(90), dir(90));
dot("$b$", dir(-90), dir(-90));
draw(arc(origin,1,90,270), EndArrow, Margins);
draw(arc(origin,1,90,-90), EndArrow, Margins);
label("$c$", dir(180), dir(180));
label("$d$", dir(0), dir(0));
