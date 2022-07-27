import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage pic1, pic2, pic3; 
float imageX1, imageY1,ImageWidth1,imageHeight1,imagelargerdimension1,imageSmallerdimension1, imageWidthratio1=0.0,imageHeightRatio1=0.0;
float imageX2, imageY2,ImageWidth2,imageHeight2,imagelargerdimension2,imageSmallerdimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float imageX3, imageY3,ImageWidth3,imageHeight3,imagelargerdimension3,imageSmallerdimension3, imageWidthratio3=0.0,imageHeightRatio3=0.0;
float picWidthAdjusted1, picHeightAdjusted1;
float picWidthAdjusted2, picHeightAdjusted2;
boolean widthLarger1=false, heightLarger1=false;
boolean widthLarger2=false, heightLarger2=false;
float drawingSurfaceX, drawingsurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float buttonX1, buttonY1,button1width,button1height;
float buttonX2, buttonY2,button2width,button2height;
boolean draw=false;
Minim minim;
AudioPlayer song1;
//global

  
void setup() { 
  minim = new Minim (this);
  song1= minim.loadFile("Appasayo.mp3");
  //display check
  //display ori
  //display and paper check
  size(700, 600);
  //
  //POP
  drawingSurfaceX = width*0;
  drawingsurfaceY = height*0;
  drawingSurfaceWidth = width*6/7;
  drawingSurfaceHeight = height*3/5;
  drawingDiameter = width*1/100;
  //
  //line drawer
  buttonX1 = width*10/12;
  buttonY1 = height*0;
  button1width = width*1/4;
  button1height=height*1/7;
  buttonX2 = width*10/12;
  buttonY2 = height*1/8;
  button2width = width*1/4;
  button2height=height*1/7;
  //
  pic1 - loadImage("")
  
  //
  rect(buttonX1, buttonY1, button1width,button1height);
  rect(buttonX2, buttonY2, button2width,button2height);
  rect(drawingSurfaceX, drawingsurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  
}
  

void draw()
{  
  
 if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingsurfaceY && mouseY<drawingsurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY); }

void mousePressed() {
   if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingsurfaceY && mouseY<drawingsurfaceY+drawingSurfaceHeight ) {
    if ( draw == true ) {
      draw=false;
    } else {
      draw = true;}}
    
}

void keyPressed() {
  if ( key=='b'||key=='B' ) song1.play();
}


  //end
