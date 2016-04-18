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
  for ( int i = 0; i < 660; i = i + 9) {
    noStroke();
    //for (int j = 0; j > colors.size (); j++) {
     // if (j >= colors.size()) {
      //  j = j - colors.size();
    fill(colors.get(i));
  //}}
  triangle(-520 + i*1.5, -500 + i, 480, 1500 - i*2, 1480 - i*1.5, -500 + i);
}  
}

