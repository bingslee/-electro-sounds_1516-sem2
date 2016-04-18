PImage img;
void setup () {
size(680,480);
img = loadImage("ikeda.jpg");}

void draw () {
  background(0);
  if(keyPressed){
  image(img,0,0);}
} 
void mousePressed() {
  println(mouseX,mouseY);
}
