//box size are reactive to amplitude of sountrack
//colours are manipulated and exported individually
import ddf.minim.*;
 
AudioPlayer player;
Minim minim;
 
void setup()
{
  size(960, 540, P3D);
 
  minim = new Minim(this);
  player = minim.loadFile("song3.wav", 2048);
  player.play();
}
 
void draw()
{
  background(0);
  stroke(255,0,0);
  strokeWeight(2);
  translate(width/2,height/2);
  for(int i = 0; i < player.left.size()-1; i++)
  {
    noFill();
    box(player.left.get(i)*500);
  }
    
  camera(0, 0, mouseX, width/2, height/2, 0, 0, 1, 0);
}
 
void stop()
{
  player.close();
  minim.stop();
   
  super.stop();
}