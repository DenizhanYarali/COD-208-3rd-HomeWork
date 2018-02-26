# COD-208-3rd-HomeWork

ArrayList<Walker> clones = new ArrayList<Walker>();
int numWalkers = 10;

void setup() {
  size(750, 700);
  background(#ED0707);
  
  for (int i = 0; i < numWalkers; i++) {
    Walker c = new Walker();
    c.r = 0;
    c.g = 0;
    c.b = 0;
    
    c.x = int(random(width));
    c.y = int(random(height));
    clones.add(c);
  }
}

void draw() {

  for (int i = 0; i < numWalkers; i++) {
    clones.get(i).step();
    clones.get(i).display();
  }
}





