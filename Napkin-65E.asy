if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-65E";
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

draw( shift( (1,0) ) * unitcircle, grey + 5 );
draw( shift( (-1,0) ) * unitcircle, grey + 5 );
dot(origin);
path g = dir(20)..dir(100)..dir(180)..dir(260)..dir(340);
draw( shift( (1,0) ) * scale(0.8) * reflect(dir(90),dir(-90)) * g, blue, EndArrow );
draw( shift( (-1,0) ) * scale(0.8) * g, red, EndArrow );
label("$a$", (-1.6,0), dir(0));
label("$b$", (1.6,0), dir(180));
