class Spot{
  float x, y, radius, speed;
  
  Spot(){
    x = 50;
    y = 50;
    radius = 15;
    speed = 0;
  }
  
  Spot(float x, float y, float r){
    this.x = x;
    this.y = y;
    this.radius = r;
  }
  
  void display(){
    ellipse(x,y,radius,radius);
  }
  
  void move(){
    x *= speed;
    y *= speed;
  }

}