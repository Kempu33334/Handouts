if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="burnside-lemma-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((0,0)--(0,1), red);
draw((0,1)--(1,1), red);
draw((1,1)--(1,0), red);
draw((1,0)--(0,0), red);
draw((2,0)--(2,1), blue);
draw((2,1)--(3,1), blue);
draw((3,1)--(3,0), blue);
draw((3,0)--(2,0), blue);
