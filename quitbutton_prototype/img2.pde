PImage pic2;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
//
void imageDraw2 () 
{
pic2=loadImage("Exit-PNG-Photo.png");
//
int pic2Width = 1000;
int pic2Height = 301;
//
println(pic2Width, pic2Height);
//
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); 
//
rectXPic2 = displayWidth*1/80;
rectYPic2 = displayHeight*0.35;
rectWidthPic2 = displayWidth*0.1;
rectHeightPic2 = displayHeight*0.2;
}
