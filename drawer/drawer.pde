//shit, the text stuff wasnt worth it, shoulda done imgs from the start, whatever ima just switch it up and hope this shit works, code is so messy 
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
String title1="left click For line tool", title2="right click for ellispe tool", title3="middle click for clear canvas";
PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7; 
PFont titleFont;
float imageX1, imageY1, ImageWidth1, imageHeight1, imagelargerdimension1, imageSmallerdimension1, imageWidthratio1=0.0, imageHeightRatio1=0.0;
float imageX2, imageY2, ImageWidth2, imageHeight2, imagelargerdimension2, imageSmallerdimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float imageX3, imageY3, ImageWidth3, imageHeight3, imagelargerdimension3, imageSmallerdimension3, imageWidthratio3=0.0, imageHeightRatio3=0.0;
float imageX4, imageY4, ImageWidth4, imageHeight4, imagelargerdimension4, imageSmallerdimension4, imageWidthratio4=0.0, imageHeightRatio4=0.0;
float imageX5, imageY5, ImageWidth5, imageHeight5, imagelargerdimension5, imageSmallerdimension5, imageWidthratio5=0.0, imageHeightRatio5=0.0;
float imageX6, imageY6, ImageWidth6, imageHeight6, imagelargerdimension6, imageSmallerdimension6, imageWidthratio6=0.0, imageHeightRatio6=0.0;
float imageX7, imageY7, ImageWidth7, imageHeight7, imagelargerdimension7, imageSmallerdimension7, imageWidthratio7=0.0, imageHeightRatio7=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float titleX1, titleY1, titleWidth1, titleHeight1;
float titleX2, titleY2, titleWidth2, titleHeight2;
float titleX3, titleY3, titleWidth3, titleHeight3;
float picWidthAdjusted2, picHeightAdjusted2;
boolean widthLarger1=false, heightLarger1=false;
boolean widthLarger2=false, heightLarger2=false;
float drawingSurfaceX, drawingsurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float buttonX1, buttonY1, button1width, button1height;
float buttonX2, buttonY2, button2width, button2height;
float buttonX3, buttonY3, button3width, button3height;
boolean draw=false;
color white=255, Black=#050505, red=#AA4C4C, blue=#3756AF, gray=#675D5D;
int titleSize;
Minim minim;
AudioPlayer song1;
AudioPlayer noise1;
//global


void setup() { 
  minim = new Minim (this);
  song1= minim.loadFile("Appasayo.mp3");
  noise1=minim.loadFile("error.mp3");
  //display check
  //display ori
  //display and paper check
  size(700, 600);
  //
  background(gray);
  //POP
  drawingSurfaceX = width*0;
  drawingsurfaceY = height*0;
  drawingSurfaceWidth = width*6/7;
  drawingSurfaceHeight = height*3/5;
  drawingDiameter = width*1/100;
  //
  //
  titleFont = createFont("Edo SZ", 55);
  rect(titleX1, titleY1, titleWidth1, titleHeight1);
  //buttons
  buttonX1 = width*10/12;
  buttonY1 = height*0;
  button1width = width*1/4;
  button1height=height*1/7;
  buttonX2 = width*10/12;
  buttonY2 = height*1/8;
  button2width = width*1/4;
  button2height=height*1/7;
  buttonX3 = width*10/12;
  buttonY3 = height*2/8;
  button3width = width*1/4;
  button3height=height*1/7;
  //
  pic1=loadImage("play.png");//158*152
  pic2=loadImage("stop.png");//158*152
  pic3=loadImage("pause.png");//158*152
  pic4=loadImage("loop.png");//170*122
  pic5=loadImage("ellispe.png");
  pic6=loadImage("line.png"); 
  pic7=loadImage("center.png");
  //imgs to say waht you can do
  imageX1 = width*10/12;
  imageY1=height*0;
  ImageWidth1=width*1/6;
  imageHeight1=height*1/7;
  imageX2 = width*10/12;
  imageY2=height*1/8;
  ImageWidth2=width*1/6;
  imageHeight2=height*1/7;
  imageX3 = width*10/12;
  imageY3=height*2/8;
  ImageWidth3=width*1/6;
  imageHeight3=height*1/7;
  //buttons for music 
  imageX4 =width*1/8;
  imageY4=height*6/8;
  ImageWidth4= width*1/6;
  imageHeight4= height*1/6;
  imageX5 =width*2/8;
  imageY5=height*6/8;
  ImageWidth5= width*1/6;
  imageHeight5= height*1/6;
  imageX6 =width*3/8;
  imageY6=height*6/8;
  ImageWidth6= width*1/6;
  imageHeight6= height*1/6;
  imageX7 =width*4/8;
  imageY7=height*6/8;
  ImageWidth7= width*1/6;
  imageHeight7= height*1/6;

  //
  rect(buttonX1, buttonY1, button1width, button1height);
  rect(imageX1, imageY1, ImageWidth1, imageHeight1);
  image(pic6, imageX1, imageY1, ImageWidth1, imageHeight1);
  rect(buttonX2, buttonY2, button2width, button2height);
  image(pic5, imageX2, imageY2, ImageWidth2, imageHeight2);
  rect(buttonX3, buttonY3, button3width, button3height);
  image(pic7, imageX3, imageY3, ImageWidth3, imageHeight3);
  rect(drawingSurfaceX, drawingsurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //end of drawing
  //start of music 
  image(pic1, imageX4, imageY4, ImageWidth4, imageHeight4);
  image(pic2, imageX5, imageY5, ImageWidth5, imageHeight5);
  image(pic3, imageX6, imageY6, ImageWidth6, imageHeight6);
  image(pic4, imageX7, imageY7, ImageWidth7, imageHeight7);
}//end of setup


void draw() 

  //drawer
{  
  if (mouseButton== LEFT) {
    if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingsurfaceY && mouseY<drawingsurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);
  }

  if (mouseButton==RIGHT) {
    if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingsurfaceY && mouseY<drawingsurfaceY+drawingSurfaceHeight) ellipse (mouseX, mouseY, width*1/50, width*1/50);
  }
  if (mouseButton==CENTER) { 
    rect(drawingSurfaceX, drawingsurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    fill(white);
  }
}
//end of draw

void mousePressed() {
  //sound effect
  if (mouseX>=imageX1 && mouseX<=imageX1+ImageWidth1 && mouseY>=imageY1 && mouseY<=imageY1+imageHeight1)noise1.play();
  if (mouseX>=imageX2 && mouseX<=imageX2+ImageWidth2 && mouseY>=imageY2 && mouseY<=imageY2+imageHeight2)noise1.play();
  if (mouseX>=imageX3 && mouseX<=imageX3+ImageWidth3 && mouseY>=imageY3 && mouseY<=imageY3+imageHeight3)noise1.play();
  //song player
  if (mouseX>=imageX4 && mouseX<=imageX4+ImageWidth4 && mouseY>=imageY4 && mouseY<=imageY4+imageHeight4)song1.play();
  if (mouseX>=imageX5 && mouseX<=imageX5+ImageWidth5 && mouseY>=imageY5 && mouseY<=imageY5+imageHeight5) {
    if (song1.isPlaying()) { 
      song1.pause();
      song1.rewind();
    }else{ 
  song1.rewind();}}
if (mouseX>=imageX6 && mouseX<=imageX6+ImageWidth6 && mouseY>=imageY6 && mouseY<=imageY6+imageHeight6){{
  if(song1.isPlaying() ) { 
    song1.pause();
  } else if(song1.position() >= song1.length() - song1.length()*1/5){
    song1.pause();
    song1.rewind();
  }else{
    song1.play();}
if (mouseX>=imageX7 && mouseX<=imageX7+ImageWidth7 && mouseY>=imageY7 && mouseY<=imageY7+imageHeight7)song1.loop(99);
//i cant remember what this is but its proably imporant 
    if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingsurfaceY && mouseY<drawingsurfaceY+drawingSurfaceHeight ) {
      if ( draw == true ) {
        draw=false;
      } else {
        draw = true;
      }
    }
  }
}
}// end of mouse

void keyPressed() {
  if ( key=='b'||key=='B' ) song1.play();
}


//end of key
