//global variable
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#AFEA28, purple=#F5234D, resetWhite=#FFFFFF, buttonColour;
//
void setup() 
{
  //display
  measleSetup();
  fullScreen();
  String landscape = "you are good";
  String portrait = "turn phone";
  String displayOrientation = (width >= height) ? landscape : portrait ;
  if (displayOrientation==portrait) println (displayOrientation);
  if (displayOrientation==landscape) appWidth = displayWidth;
  if (displayOrientation==landscape) appHeight = displayHeight;
  println(appWidth, appHeight);
  //population
  int centerX = appWidth*1/6;
  int centerY = appHeight*1/4;
  quitButtonX = centerX - appWidth*1/8;
  quitButtonY = centerY - appHeight*1/8;
  quitButtonWidth =appWidth*1/8;
  quitButtonHeight = appHeight*1/4;
  //
  textSetup();
}
//
void draw() 
{
  //DisplayOrientation finishing code
  //
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight)
  {
    buttonColour = purple;
    measleDraw();
    imageDraw1();
  }
  else
  {
    buttonColour = yellow;
    imageDraw2();
  } 
  println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t loot at the middle value");
  println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t loot at the middle value");
  //
  fill(buttonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
  //

}
//
void keyPressed() 
{
  //quit keyboard button
  if ( key=='Q' || key=='q') exit();//key board is seperated on key-variables: key & keyCode
}
//
void mousePressed() 
{
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}
//
