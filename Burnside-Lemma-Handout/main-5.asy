if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
size(12cm);

real r = 8;
pen border = linewidth(1.2) + black;

pen blue1 = rgb(0.45,0.7,0.95);
pen green1 = rgb(0.45,0.85,0.6);
pen pink1 = rgb(0.95,0.6,0.75);
pen red1 = rgb(0.95,0.6,0.6);
pen yellow1 = rgb(0.95,0.92,0.55);
pen vio1 = rgb(0.75,0.6,0.95);
pen orange1 = rgb(0.98,0.78,0.45);
pen cyan1 = rgb(0.45,0.95,0.95);
pen purple1 = rgb(0.75,0.6,0.95);

pair L = (-120,0);
real dx = 40;
real dy = 42;

string[] leftLabels = {"a","b","c","d"};
string[] rightLabels = {"g","h","i","j"};
pen[] leftColors = {blue1, pink1, yellow1, cyan1};
pen[] rightColors = {green1, red1, orange1, purple1};

pair[] leftPts, rightPts;
for(int i=0;i<4;++i){
leftPts.push(L + (-dx, 1.5*dy - i*dy));
rightPts.push(L + ( dx, 1.5*dy - i*dy));
}

pen edgePen = black+0.6;
for(int i=0;i<4;++i){
for(int j=0;j<4;++j){
draw(leftPts[i] -- rightPts[j], edgePen + linewidth(0.7));
}
}

for(int i=0;i<4;++i){
filldraw(circle(leftPts[i], r), leftColors[i], border);
filldraw(circle(rightPts[i], r), rightColors[i], border);
label(leftLabels[i], leftPts[i], fontsize(11));
label(rightLabels[i], rightPts[i], fontsize(11));
}

pair R = (120,0);
real S = 70;
real s = 28;

pair p1 = R + (-S, S);
pair p2 = R + ( S, S);
pair p3 = R + ( S,-S);
pair p4 = R + (-S,-S);
pair q5 = R + (-s, s);
pair q6 = R + ( s, s);
pair q7 = R + ( s,-s);
pair q8 = R + (-s,-s);

draw(p1--p2--p3--p4--cycle, black+0.8);
draw(q5--q6--q7--q8--cycle, black+0.8);

draw(p1--q5, black+0.9);
draw(p2--q6, black+0.9);
draw(p3--q7, black+0.9);
draw(p4--q8, black+0.9);

// colors for inner nodes 5-8 (match picture)
pen c5 = green1, c6 = pink1, c7 = vio1, c8 = yellow1;
pen c1 = blue1, c2 = red1, c3 = cyan1, c4 = orange1;

pair[] outerPts = {p1,p2,p3,p4};
pair[] innerPts = {q5,q6,q7,q8};
pen[] outerCols = {c1,c2,c3,c4};
pen[] innerCols = {c5,c6,c7,c8};

for(int i=0;i<4;++i){
filldraw(circle(outerPts[i], r+1), outerCols[i], border);
label(string(i+1), outerPts[i], fontsize(11));
}
for(int i=0;i<4;++i){
filldraw(circle(innerPts[i], r+1), innerCols[i], border);
label(string(5+i), innerPts[i], fontsize(11));
}
