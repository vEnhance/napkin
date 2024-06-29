if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-16A";
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

bigbox("$X$");
draw(ellipse(origin,0.8,2.5));
draw(ellipse((-2,0),0.8,1.5));
draw(ellipse(( 2,0),0.8,2.25));
for (int i=-3; i<=3; ++i) {
dot( (0, 0.7*i) );
}
dot( (-2,0) );
dot( (-2,-1) );
dot( (-2,1) );
dot( ( 2,0) );
dot( ( 2,-1) );
dot( ( 2,1) );
dot( ( 2,-2) );
dot( ( 2,2) );

MP("\mathcal O_1", (-2,-1.5), dir(225));
MP("\mathcal O_2", ( 0,-2.5), dir(180));
MP("\mathcal O_3", ( 2,-2.25), dir(225));
