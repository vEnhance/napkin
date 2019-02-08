//Version 4.1 of 03/28/2008

import graph;

//Default size

// size(400);

//A patch for the intersectionpoints bug


pair [] intersect2paths (path A, path B)
{
pair[] points;
if (length(A)==-1) return points;
if (length(B)==-1) return points;
int count=0;
bool flag=true;
path a=A,aa,at;
if (cyclic(a)) a=subpath(a,0,reltime(a,0.997));
real LA=arclength(a),t,l;
for (int k=0; flag&&(k<100); ++k)
{
real[] times = intersect(a,B,LA/10^7);
if (times.length==0) flag=false;
else 
 {
 at=a;
 for(int m=0;(m<6)&&(times.length==2);++m)
  { 
  t=times[0]; aa=subpath(at,0,t);
  if (length(aa)>0) at=subpath(aa,0,t-1/300);
  times=intersect(at,B,LA/10^7);
  }
 l=arclength(a);
 if (l>0) a=subpath(a,reltime(a,arclength(aa)/l),length(a));
 points[count]=point(a,0);
 a=subpath(a,reltime(a,1/200),length(a));
 ++count;
 }
if (arclength(a)<=LA/300) flag=false;
}
return points;
}



pair[] commonpoints(path[] A,path[] B)
{
pair[] output;
int count=0;
for(int k=0; k<A.length; ++k)
for(int m=0; m<B.length; ++m)
 {
 pair[] temp=intersect2paths(A[k],B[m]);
 for (int n=0; n<temp.length; ++n)
  {
  output[count]=temp[n]; ++count;
  }
 }
return output;
}


//Adjustable variables

pair nullpair=(1.2345,6.7890);
pair messageplace=(0,5);
pen pointpen=red,pathpen=blue,
    errorpen=yellow+linewidth(2),
    pointfontpen=black,pathfontpen=magenta,
    anglepen=green,anglefontpen=red;

int pointfontsize=11;
int pathfontsize=13;
int anglefontsize=9;

bool fullbreak=false;
bool pathflag=true;

//Auxiliary variables 

bool breakflag=false;

//Basic routines

real d(pair A,pair B)
{
if ((A==nullpair)||(B==nullpair)) return -1;
return sqrt((A.x-B.x)^2+(A.y-B.y)^2);
}

pair MP(real a=0, Label L, pair A, int f=pointfontsize,pair B=plain.S,pen p=pointfontpen)
{
if (fullbreak&&breakflag) return A;
Label M=L;
M.s="\("+L.s+"\)";
int ff=f;
if (f<4) ff=4;
if (A!=nullpair) label(rotate(a)*M,A,B,fontsize(ff)+p); 
return A;
}

path MC(real a=0, Label s,int f=pathfontsize,path P,real t=0.5,pair B=plain.N,pen p=pathfontpen)
{
if (length(P)==-1) return P;
if (fullbreak&&breakflag) return P;
real u=t;
if (u>1) u=1;
if (u<0) u=0;
MP(a,s,point(P,reltime(P,u)),f,B,p);
return P;
}


path D(path p, pen q=pathpen, real m=1, arrowbar ar=None)
{
if (fullbreak&&breakflag) return p;
if((m>0)&&pathflag) draw(p,q,ar); 
return p;
}

path[] DPA(path[] p, pen q=pathpen, real m=1)
{
if (fullbreak&&breakflag) return p;
if((m>0)&&pathflag) draw(p,q); 
return p;
}

pair D(real a=0, Label L="", int f=pointfontsize,
       pen pp=pointfontpen, pair p, pen q=pointpen, real m=1,pair B=plain.S)
{
if (fullbreak&&breakflag) return p;
if ((p!=nullpair)&&(m>0)) dot(MP(a,L,p,f,B,pp),q);
return p;
}

path CR(pair A, real R, real a=0, real b=360)
{
if((A==nullpair)||(R<=0)) return nullpath;
if((a==0)&&(b==360)) return Circle(A,R);
return Arc(A,R,a,b);
}

path CP(pair A, pair B, real a=0, real b=360)
{
if (B==nullpair) return nullpath;
return CR(A,d(A,B),a,b);
}

path L(int k=0, pair A, pair B, real a=0.6, real b=a)
{
if((A==nullpair)||(B==nullpair)) return nullpath;
if (k==0) return (a*(A-B)+A)--(b*(B-A)+B);
if (k==1) return (a*unit(A-B)+A)--(b*unit(B-A)+B);
if (k==2) return (a*(A-B)*(0,1)+(A+B)/2)--(b*(B-A)*(0,1)+(A+B)/2);
if (k==3) return (a*unit(A-B)*(0,1)+(A+B)/2)--(b*unit(B-A)*(0,1)+(A+B)/2);
return nullpath;
}

pair[] IPs(path[] A, path[] B)
{
return commonpoints(A,B);
}

pair IP(path[] A, path[] B, int m=0)
{
pair[] intpoints=commonpoints(A,B);
int len=intpoints.length;
if ((m>=len)||(m<0)) 
 { 
 if (fullbreak) 
  {
  bool tempflag=pathflag;
  pathflag=true;
  DPA(A,errorpen);
  DPA(B,errorpen);
  pathflag=tempflag;
  for(int k=0;k<len;++k) MP(string(k),D(intpoints[k],black),9,N);
  MP("\mbox{Paths have no common point with index }"+string(m),messageplace,9);
  }
 breakflag=true;
 return nullpair;
 }
return intpoints[m];
}

pair OP(path[] A, path[] B)
{
return IP(A,B,1);
} 

pair WP(path P,real t=0.5)
{
if ((length(P)==-1)||(t>1.001)||(t<-0.001)) 
 {
 if (fullbreak) 
  {
  if(length(P)==-1) MP("\mbox{There are no points on nullpath}",messageplace,9); 
  else 
   {
   bool tempflag=pathflag;
   pathflag=true;
   D(P,errorpen);
   pathflag=tempflag;
   MP(string(t)+"\mbox{ is out of range }[0,1]",messageplace,9);
   }
  }
 breakflag=true;
 return nullpair;
 }
if(t<0) t=0; if(t>1) t=1;
return point(P,reltime(P,t));
}

picture CC()
{
picture p=rotate(0)*currentpicture;
currentpicture.erase();
return p;
}

pair MA (real a=0, Label s='',int f=anglefontsize,  
         pen p=anglefontpen, pair B, pair A, pair C, real r, int m=1, pair S=nullpair, pen q=anglepen)
{
if ((A==nullpair)||(B==nullpair)||(C==nullpair)) return A;
pair U=unit(B-A), V=unit(C-A);
if ((U==(0,0))||(V==(0,0))) return A;
path P=arc((0,0),U,V);
pair D=WP(P),Q=S;
if (Q==nullpair) Q=D;
D=A+r*D;
if (m<0) m=0;
if (m<8)
 {
 int n=2*m-1; if (m==2) n=4; if (n>8) n=8;
 for(int k=0;k<m;++k) D(shift(A)*scale(r*(1-k/n))*P,q); 
 }
if (m>7&&(!(fullbreak&&breakflag))&&pathflag) fill(A--shift(A)*scale(r)*P--cycle,q);
MP(a,s,D,f,Q,p);
return A;
}

picture p,q;

//Basic routine long names

real distance(pair A,pair B)=d;

path Drawing(path p, pen q=pathpen, real m=1, arrowbar ar=None)=D;

pair Drawing(real a=0, Label L="", int f=pointfontsize,
       pen pp=pointfontpen, pair p, pen q=pointpen, real m=1,pair B=plain.S)=D;

path[] DrawPathArray(path[] p, pen q=pathpen, real m=1)=DPA;

pair MarkPoint(real a=0, Label L, pair A, int f=pointfontsize,pair B=plain.S, pen p=pointfontpen)=MP;

path CirclebyRadius(pair A, real R, real a=0, real b=360)=CR;

path CirclebyPoint(pair A, pair B, real a=0, real b=360)=CP;

path Line(int k=0, pair A, pair B, real a=0.6, real b=a)=L;

pair[] IntersectionPoints(path[] A, path[] B)=IPs;

pair IntersectionPoint(path[] A, path[] B, int m=0)=IP;

pair OtherPoint(path[] A, path[] B)=OP; 

path MarkCurve(real a=0, Label s,int f=pathfontsize,path P,real t=0.5,pair B=plain.N,pen p=pathfontpen)=MC;

pair WayPoint(path P,real t=0.5)=WP;

picture CopyClean()=CC;

pair MarkAngle(real a=0,Label s='',int f=anglefontsize,  
         pen p=anglefontpen, pair B, pair A, pair C, real r, int m=1, pair S=nullpair, pen q=anglepen)=MA;

