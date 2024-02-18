import three;
currentprojection=orthographic((2, -3, 1), up=Z);

path p=(1, 0)..(2, 1)..(3, 0)..{left}(2.5, -1)--(1.5, -1){left}..cycle;
draw(path3(p));

draw((-1, 0, 0)--(4, 0, 0), Arrow3, L=Label("$x$", EndPoint));
draw((0, 0, -1)--(0, 0, 4), Arrow3, L=Label("$y$", EndPoint));

draw(shift(0, 0, 2)*rotate(90, Y)*path3(unitcircle));

triple pair_to_triple(pair q){ return (q.x,q.y,0); }
triple intersect_below(real x){ return pair_to_triple(intersectionpoints(p, (x, 0)--(x, -2))[0]); }
triple intersect_above(real x){ return pair_to_triple(intersectionpoints(p, (x, 0)--(x, 2))[0]); }
triple project_up(triple a){ return (a.x,a.y,2-sqrt(max(0,1-a.y^2))); };
triple project_left(triple a){ return (0,a.y,a.z); }

real epsilon=1e-8;
guide3 s;
for(real i=1; i<=3+epsilon; i+=1/16) s=s..project_up(intersect_below(i));
for(real i=3-1/16; i>1+epsilon; i-=1/16) s=s..project_up(intersect_above(i));
s=s..cycle;
draw(s);

triple q, r; // global variable
void draw_correspondence(triple p, bool include_blue_line=true){
	q=project_up(p);
	r=project_left(q);
	dot(p, red);
	dot(q, black);
	dot(r, blue);
	draw(p--q, red+dashed);
	if(include_blue_line) draw(q--r, blue+dashed);
}
draw_correspondence(intersect_below(1));
label("$C$", r, align=SW);
draw_correspondence(intersect_below(1.2));
draw_correspondence(intersect_below(1.5));
draw_correspondence(intersect_below(2.3), include_blue_line=false);
label("$A$", r, align=W);
draw_correspondence(intersect_above(1.8));
draw_correspondence(intersect_above(2));
label("$B$", r, align=NE);
label("$X$", (3, 0, 0), align=E);
label("$Y$", (0, 0, 3), align=NE);
r=(0, -sqrt(2)/2, 2+sqrt(2)/2);
dot(r, blue);
label("$D$", r, align=W);
