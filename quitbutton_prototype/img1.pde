PImage pic1;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
//
void imageDraw1 () 
{
pic1=loadImage("question-2000x2598.png");
//
int pic1Width = 1000;
int pic1Height = 301;
//
println(pic1Width, pic1Height);
//
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); 
//
rectXPic1 = displayWidth*1/9;
rectYPic1 = displayHeight*0.4;
rectWidthPic1 = displayWidth*0.05;
rectHeightPic1 = displayHeight*0.1;
}
