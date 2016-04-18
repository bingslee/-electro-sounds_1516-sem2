ArrayList colors;

void setup () {
  size(500, 500);
  ArrayList<Colors> colors = new ArrayList<Colors>();

}

void draw () {
  //background (0); 
    noLoop();
    for( int i = 0; i < 300; i = i + 9) {
      noStroke();
    class Colors {
  int x;
  int y;
 
  Particle() {
    x = mouseX;
    y = mouseY;
    xspeed = random(-1, 1);
    yspeed = random(-3, 0);
  }

      int a = int(random(3));
       int b = int(random(3));
        int c = int(random(3));
      fill(colors[a],colors[b],colors[c]);
      triangle(-375 + i*1.5, -250 + i, 250, 1000 - i*2, 875 - i*1.5, -250 + i);
    }
}


