PImage img;
int a;
int b;
int c;

void setup () {
  size(510, 510);
  img = loadImage("large.jpg");
  //background(0);
}

void draw () {
  background (255);
  
  strokeWeight(10);
  stroke(0);
  rect(40, 40, 420, 430);  
  
  noLoop();
  for (int i=0; i<50; i = i+9)
  for (int k=0; k<50; k = k+14)
  { 
    strokeWeight(10);
    int a = int(random(255));
    int b = int(random(255));
    int c = int(random(255));
    stroke(a, b, c);
    triangle(50+5+i, 50+i, 250, 460-5-i, 450-5-i, 50+i);
  }
}

void mousePressed() {
  println(mouseX, mouseY);
}

