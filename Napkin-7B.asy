if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-7B";
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
pair p = (-1.5,0);
pair q = ( 1.5,0);
filldraw(CR(p,1), opacity(0.1)+lightcyan, blue+dashed);
filldraw(CR(q,1), opacity(0.1)+lightred, red+dashed);
dot("$p$", p, dir(-90), blue);
dot("$q$", q, dir(-90), red);
