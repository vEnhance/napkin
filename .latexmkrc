push @extra_pdflatex_options, '-synctex=1' ;
push @extra_xelatex_options, '-synctex=1' ;
push @extra_lualatex_options, '-synctex=1' ;

sub asy {return system("asy -o asy/ '$_[0]'");}
add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","tex",0,"asy");

$max_repeat = 12;
$pdf_mode = 1;

@default_files = ('Napkin.tex');

# vim: ft=perl
