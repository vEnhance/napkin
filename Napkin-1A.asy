if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Napkin-1A";
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

size(12cm);
picture aoeu(string a, string b, string c, string d, string e,
string x) {
draw(dir(0)--dir(72)--dir(144)--dir(216)--dir(288)--cycle);
MP(a, dir(0), dir(0));
MP(b, dir(72), dir(72));
MP(c, dir(144), dir(144));
MP(d, dir(216), dir(216));
MP(e, dir(288), dir(288));
MP(x, origin, origin);
return CC();
}
picture one = aoeu("1", "2", "3", "4", "5", "1");
picture r = aoeu("5", "1", "2", "3", "4", "r");
picture s = aoeu("1", "5", "4", "3", "2", "s");
picture sr = aoeu("5", "4", "3", "2", "1", "sr");
picture rs = aoeu("2", "1", "5", "4", "3", "rs");
add(shift( (0,0) ) * one);
add(shift( (3,0) ) * r);
add(shift( (6,0) ) * s);
add(shift( (9,0) ) * sr);
add(shift( (12,0) ) * rs);
