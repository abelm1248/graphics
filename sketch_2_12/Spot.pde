class Spot{
  float x, y, radius, speed;
  float xvelocity = 0;
  float yvelocity = 0;
  
  Spot(){
    x = 50;
    y = 50;
    radius = 15;
    xvelocity = yvelocity = speed = 0;
  }
  
  Spot(float x, float y, float r, float s){
    this.x = x;
    this.y = y;
    this.radius = r;
    xvelocity = yvelocity = speed = s;
  }
  
  void display(){
    ellipse(x,y,radius,radius);
  }
  
  void check_col(){
    float tempx = x+xvelocity;
    float tempy = y+yvelocity;
    if(tempx>width){
      xvelocity = -1*speed;
    }
    else if(tempx<0){
      xvelocity = speed;
    }
    if(tempy>height){
      yvelocity = -1*speed -3;
    }
    else if(tempy < 0){
      yvelocity = speed + 3;
    }
  }
  
  void move(){
    check_col();
    x += xvelocity;
    y += yvelocity;
  }
}