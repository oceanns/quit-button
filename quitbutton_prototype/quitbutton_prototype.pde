//global variable
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#F7E452, purple=#751DCE, resetWhite=#FFFFFF, buttonColour;
//
void setup() 
{
  //display
  fullScreen();
  String landscape = "you are good";
  String portrait = "turn phone";
  String displayOrientation = (width >= height) ? landscape : portrait ;
  if (displayOrientation==portrait) println (displayOrientation);
  if (displayOrientation==landscape) appWidth = displayWidth;
  if (displayOrientation==landscape) appHeight = displayHeight;
  println(appWidth, appHeight);
  //population
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  quitButtonX = centerX - appWidth*1/4;
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth =appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}
//
void draw() 
{
  //DeisplayOrientation finishing code
  //
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) 
  {
    buttonColour = purple;
  } else {
    buttonColour = yellow;
  } 
  
  
  fill(buttonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
}
//
void keyPressed() 
{
  //quit keyboard button
  if ( key=='Q' || key=='q') exit();//key board is seperated on key-variables: key & keyCode
}
//
void mousePressed() {}
//
