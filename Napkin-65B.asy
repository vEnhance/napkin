if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-65B";
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

unitsize(6cm);
Drawing( unitsquare);
MP("0", (0,0), S);
MP("1", (1,0), S);
MP("\frac{1}{4}", (1/4, 0), S);
MP("\frac{1}{2}", (1/2, 0), S);
MP("0", (0,1), N);
MP("1", (1,1), N);
MP("\frac{3}{4}", (3/4, 1), N);
MP("\frac{1}{2}", (1/2, 1), N);
MP("\gamma_1", (1/8, 0), N);
MP("\gamma_2", (3/8, 0), N);
MP("\gamma_3", (3/4, 0), N);
MP("\gamma_1", (1/4, 1), S);
MP("\gamma_2", (5/8, 1), S);
MP("\gamma_3", (7/8, 1), S);

MP("\boxed{\gamma_1 \ast \left( \gamma_2 \ast \gamma_3 \right)}", (0.5,1.2), origin);
MP("\boxed{\left( \gamma_1 \ast \gamma_2 \right) \ast \gamma_3}", (0.5,-0.2), origin);

Drawing((1/4,0)--(1/2,1), blue);
Drawing((1/2,0)--(3/4,1), blue);
Drawing( (1/2,0)--(1/2,1), dotted);
