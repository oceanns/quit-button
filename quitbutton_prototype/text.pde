void textSetup () 
{
String title = "hoVer button to play, click to exit";
PFont titleFont;
float titleX, titleY, titleWidth, titleHeight;
color resetDefaultLink=#FFFFFF, blue=#387E9B;
//
//display geometry 
fullScreen(); //fullscreen(); displayWidth, displayHeight
//display orientation: landscape, portrait, and square
//population
titleX = displayWidth*1/5;
titleY = displayHeight*1/10;
titleWidth = displayWidth*3/5; // rect ends 4/5's of width
titleHeight = displayHeight*1/10; // rect ends at 2/10's of height
//
//fonts from operating system
//String[] fontList = PFont.list(); //to list all fonts on the OS
//printArray(fontList); //For listing all possible fonts to choose, then createFont
//
titleFont = createFont("Old English Text MT", 47); //verify font exists
// tools/ create font / find font / do not press "ok", known bug
//
//laying out the text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight);
//drawing text
fill(blue); //ink, hexidecimal copied from colour selector
textAlign(CENTER, CENTER); //align horizontal, vertical, see processing.org
//values [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
textFont(titleFont, 80); //change the number until it fits, largest text
text(title, titleX, titleY, titleWidth, titleHeight);
fill(resetDefaultLink);
}
