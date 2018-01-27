PImage img;

void setup(){
  surface.setResizable(true);
  img = loadImage("longhorn.png");
  surface.setSize(img.width, img.height);
}

void draw(){
  image(img, 0, 0);
  for(int i=0;i<img.width;i++){
    for(int j=0;j<img.height;j++){
      
    }
  }
}