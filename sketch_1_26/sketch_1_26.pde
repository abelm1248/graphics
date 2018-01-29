PImage img;
int idx = 0;

void setup(){
  surface.setResizable(true);
  img = loadImage("longhorn.png");
  surface.setSize(img.width, img.height);
}

void draw(){
  image(img, 0, 0);
  img.loadPixels();
  for(int i=0;i<img.width;i++){
    for(int j=0;j<img.height;j++){
      idx = i * img.height + j;
      img.pixels[idx] = color(0, 0, 255);
    }
  }
  img.updatePixels();
}