import ddf.minim.*;
 
AudioPlayer player;
Minim minim;
 
void setup()
{
  size(1280, 720, P3D);
 
  minim = new Minim(this);
  player = minim.loadFile("song3.wav", 2048);
  player.play();
}
 
void draw()
{
  background(0);
  stroke(255,0,0);
  strokeWeight(2);
    translate(0,height/2);
  for(int i = 0; i < player.left.size()-1; i++)
  {
    line(i, player.left.get(i)*500, i+1, player.left.get(i+1)*500);
  }
  
}
 
void stop()
{
  player.close();
  minim.stop();
   
  super.stop();
}