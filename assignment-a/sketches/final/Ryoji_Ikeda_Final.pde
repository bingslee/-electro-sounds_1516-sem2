PImage img;
float a ;
float b ;

void setup () {
  size(960, 540);
  background(0);
  
  img = loadImage("ikeda.jpg");
}


void draw () {
  //  background(255,0,0);
  noLoop();
  translate(140,30);
  for (int j = 0; j < 8; j++) {
    for (int i=0; i<400; i++) {
      line(15+ 80*j, 39+i, 90 + 80*j, 39+i);
      a = random(255);
        stroke(a);
      strokeCap(SQUARE);
      b = random(40);
      strokeWeight(b);
    }
  }
}
void mousePressed() {
  println(mouseX, mouseY);
}

