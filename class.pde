class Walker {
  float x;
  float y;
  float tx;
  float ty;
  
  int r;
  int g;
  int b;
  float a;
  
  Walker() {
   x = width/3;
   y = height/2;
   
   tx = 7;
   ty = 2;
   
   r = int(random(255));
   g = int(random(255));
   b = int(random(255));
   a = 255;
  }
  
  void display() {
   stroke(r,g,b,a);
   point(x,y);
   
   float r  = map(noise(tx),0,1,0,200);
   a = map(noise(ty),0,1,10,175);
   rect(x,y,r,r);
  }
  
  void step() {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,5,0,height);
    
    tx += 0.01;
    ty += 0.01;
  }

}



