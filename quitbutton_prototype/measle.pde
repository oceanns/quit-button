//global variable
int smallerGeometryDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, reset;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
//
void measleSetup() 
{
  //display geometry
  fullScreen();
  appWidth = displayWidth; 
  appHeight = displayHeight;
  println(width, height, displayWidth, displayHeight);
  println(appWidth, appHeight);
  //
  //display orientation
  //purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio)
  //computer tells ud the orientation, important for phone orientation
  //if (appWidth >= appHeight) {println("Landscpe or Square");} else {println("Portrait");}
  String ls="Landscpae or Square", p="Portrait", DO="Display Orientation", instruct="turn yo phone";
  String orientation = (appWidth >= appHeight) ? ls : p;
  println(DO, orientation);
  if (orientation==p) println(instruct);
  //with Strings, easier to print console or canvas
  //
  //variable population
  smallerGeometryDimension=appHeight;
  reset = smallerGeometryDimension/smallerGeometryDimension; //returns "1"
  rectFaceX = appWidth*1/2 - smallerGeometryDimension*1/2;
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerGeometryDimension ;
  rectFaceHeight = smallerGeometryDimension;
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerGeometryDimension;
  leftEyeX = appWidth*1/2 - smallerGeometryDimension*1/5.5;
  leftEyeY = appHeight*1/2 - smallerGeometryDimension*1/4;
  rightEyeX = appWidth*1/2 + smallerGeometryDimension*1/5.5;
  rightEyeY = leftEyeY;
  eyeDiameter = smallerGeometryDimension*1/4;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerGeometryDimension*1/4;
  noseX1 = faceX;
  noseY1 = leftEyeY;
  noseX2 = noseX1 - leftEyeY*1/2;
  noseY2 = faceY;
  noseX3 = noseX1 + leftEyeY*1/2;
  noseY3 = noseY2;
  //
  //
  //face: circle = inscribed in a square
  //center a circle on display orientation
  rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  //ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//end setup
//
void measleDraw() 
{
  //measle
  float measleDiameter = random( smallerGeometryDimension*1/100, smallerGeometryDimension*1/25);
  float measleRadius = measleDiameter*1/2;
  float measleX = random(rectFaceX+measleRadius, rectFaceX+rectFaceWidth-measleRadius);
  float measleY = random(appHeight*0+measleRadius, appHeight-measleRadius);
  Boolean nightMode=false;
  //color red=#D32A00, measleColour=red;
  color measleColour = color( random(255), random(255), random(255)); //ternary operator
  color whiteReset=#FFFFFF;
  //
  float measleRectX = measleX-measleDiameter*1/2;
  float measleRectY = measleY-measleDiameter*1/2;
  float measleWidth = measleDiameter;
  float measleHeight = measleDiameter;
  //rect(measleRectX, measleRectY, measleWidth, measleHeight);
  //random values returned given other variables
  noStroke();
  fill(measleColour);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  stroke(reset); //reset to 1 pixel
  fill(whiteReset);
  //
}
