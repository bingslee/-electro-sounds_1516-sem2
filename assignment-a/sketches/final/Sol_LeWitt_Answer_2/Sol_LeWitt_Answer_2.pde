//creating a arralylist to cycle through list of colours
ArrayList<Integer> colors = new ArrayList<Integer>();
int j;

void setup() {
  //list of colours
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
  //noLoop() to stop draw from looping
  noLoop();
  noStroke();
  int j = 0;
  int col = 0;
  for ( int i = 0; i < 74; i++) {
    j++;
    if(j >= colors.size()) {
      j = 0;
    }
    col = colors.get(j);
    // int col = colors.get(i%colors.size());
    fill(col);
    int n = i*9;
    //using pythagaros theorem to measure the ratio of triangle then working backwards to make sure colour fits the entire dimension
    triangle(-520 + n*1.5, -500 + n, 480, 1500 - n*2, 1480 - n*1.5, -500 + n);
  }
  
  
}