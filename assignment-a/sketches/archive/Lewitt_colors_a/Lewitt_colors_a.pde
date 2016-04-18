ArrayList<Integer> colors = new ArrayList<Integer>();
int j;

void setup() {
  colors.add(color(255, 0, 0));
  colors.add(color(0, 255, 0));
  colors.add(color(0, 0, 255));
  colors.add(color(255, 255, 0));
  colors.add(color(0, 0, 255));
  colors.add(color(164, 27, 240));
  colors.add(color(245, 143, 10));

  size(960, 540);
}

void draw() {
  background (255); 
  noLoop();
  noStroke();
  
  for ( int i = 0; i < 70; i++) {
    fill(colors.get(i%colors.size()));
    int n = i*9;
    triangle(-520 + n*1.5, -500 + n, 480, 1500 - n*2, 1480 - n*1.5, -500 + n);
  }
  
  
}

