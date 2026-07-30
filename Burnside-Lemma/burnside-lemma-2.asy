if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="burnside-lemma-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.5cm);
draw((0,0)--(1,0)--(1,1)--(0,1)--cycle);
draw((0,0.6)..(0,1)..(0.4,1), EndArrow(5));
draw((0,0.4)..(0,0)..(0.4,0), BeginArrow(5));
draw((0.6,1)..(1,1)..(1,0.6), EndArrow(5));
draw((1,0.4)..(1,0)..(0.6,0), EndArrow(5));
