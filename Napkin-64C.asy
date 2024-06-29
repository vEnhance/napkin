if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-64C";
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
filldraw(unitsquare, opacity(0.2)+lightblue, black);

pair B = (0,1);
pair A = (1,0);
fill(box(0.3*A+0.2*B,0.6*A+0.7*B), lightred+opacity(0.5));
label("$U \times V$", (0.45,0.45), brown);

draw(0.3*A--(0.3*A+B), heavygreen+dashed+1);
draw(0.6*A--(0.6*A+B), heavygreen+dashed+1);
draw(0.2*B--(0.2*B+A), heavycyan+dashed+1);
draw(0.7*B--(0.7*B+A), heavycyan+dashed+1);

draw( 0.3*A--0.6*A, heavygreen+2 );
opendot( 0.3*A, heavygreen+2);
opendot( 0.6*A, heavygreen+2);
label("$U$", 0.45*A, dir(-90), heavygreen);
draw( 0.2*B--0.7*B, heavycyan+2 );
opendot( 0.2*B, heavycyan+2);
opendot( 0.7*B, heavycyan+2);
label("$V$", 0.45*B, dir(180), heavycyan);
