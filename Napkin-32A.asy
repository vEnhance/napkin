if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-32A";
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

cplane();
guide zp, zp3;
pair fz(int d){
return exp((I+0.05)*d*2*pi/360)*1.2;
}
for(int d=0; d<=270; d+=45){
pair z=fz(d);
zp=zp..z;
zp3=zp3..z^3;
dot(zp, red);
dot(zp3, blue);
}
draw(zp, red);
draw(zp3, blue);

label("$z_0^{\phantom{3}}$", fz(0), align=S, red);
label("$z_1$", fz(45), align=SW, red);
label("$z_6$", fz(45*6), align=E, red);
label("$z_0^3$", fz(0)^3, align=S, blue);
label("$z_1^3$", fz(45)^3, align=NW, blue);
label("$z_6^3$", fz(45*6)^3, align=W, blue);
