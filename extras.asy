import olympiad;
import cse5;
import graph;

void bigbox(string L) {
	filldraw((-4,3)--(4,3)--(4,-3)--(-4,-3)--cycle,
		lightblue+opacity(0.2), black);
	label(L, (4,3), dir(-45));
}
void bigblob(string L) {
	filldraw((-4,3)..(-5,1)..(-4.7,0)..(-4.1,-2)..(-4,-3)
		..(-1,-3.3)..(1,-3.2)..(4,-3)
		..(4.3,-1)..(4.1,0.5)..(4,3)
		..(2,3.3)..(0,3.1)..(-3,2.9)..cycle,
		lightblue+opacity(0.2), black);
	label(L, (4,3), dir(5));
}

real[] default_ticks = {-4,-3,-2,-1,0,1,2,3,4};
void cplane(real theta=-45, real[] T = default_ticks, real xmin = -4.5, real xmax = 4.5, real S = 3) {
	graph.xaxis("Re", xmin, xmax, graph.Ticks(format="%", Ticks=T, Size=S), Arrows);
	graph.yaxis("Im", xmin, xmax, graph.Ticks(format="%", Ticks=T, Size=S), Arrows);
	Drawing("0", (0,0), dir(theta));
	markscalefactor *= xmax;
}

pair opendot(pair P, pen p = defaultpen) {
	dot(P, p, UnFill);
	dot(P, p, Draw);
	return P;
}
