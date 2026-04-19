if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((0,0)--(2,0)--(2,1)--(0,1)--cycle);
draw((1,1.3)--(1,-0.3), dashed);
draw((-0.5,0.5)--(2.5,0.5), dashed);
