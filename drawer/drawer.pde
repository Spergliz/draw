import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

float drawingSurfaceX, drawingsurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float buttonX1, buttonY1,button1width,button1height;
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
  buttonX1 = width*9/10;
  buttonY1 = height*0;
  button1width = width*1/4;
  button1height=height*1/7;
  
  //
  rect(drawingSurfaceX, drawingsurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);

rect(buttonX1, buttonY1, button1width,button1height);
  
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
