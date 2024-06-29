if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-3A";
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

size(9cm);
for (int i=1; i<=6; ++i) {
draw( (i,0)--(i,3.4) );
dot( (i,0.6) );
dot( (i,1) );
dot( (i,1.7) );
dot( (i,2.4) );
dot( (i,2.8) );
dot( (i,3) );
label(rotate(90)*scale(1.4)*"$\Longleftarrow$", (i+0.02,-0.9), dir(90));
dot( (i,-1) );
}
label("$G$", (0.5, 3));
label("$Q$", (0.5,-1));
