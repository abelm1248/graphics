Spot sp1;

void setup(){
  sp1 = new Spot(250,0,10, 5);
  size(500,500);  
}

void draw(){
  background(177);
  sp1.move();
  sp1.display();
}