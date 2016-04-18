import ddf.minim.*;
 
AudioPlayer player;
Minim minim;

boolean recording = false;
 
void setup()
{frameRate(48);
  size(960, 540, P3D);
 
  minim = new Minim(this);
  player = minim.loadFile("song3.wav", 2048);
  player.play();
}
 
void draw()
{
  background(0);
  stroke(255);
  strokeWeight(2);
    translate(0,180);
  for(int i = 0; i < player.left.size()-1; i++)
  {
    line(i, player.left.get(i)*500, i+1, player.left.get(i+1)*500);
  }
  translate(0,180);
  for(int i = 0; i < player.left.size()-1; i++)
  {
    line(i, player.left.get(i)*500, i+1, player.left.get(i+1)*500);
  }
  if(recording) {
    saveFrame("test/######.tga");
  }
}
 
void stop()
{
  player.close();
  minim.stop();
   
  super.stop();
}