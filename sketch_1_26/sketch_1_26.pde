PImage img;
int idx = 0;

void setup(){
  surface.setResizable(true);
  img = loadImage("longhorn.png");
  surface.setSize(img.width, img.height);
}

void draw(){
  img.loadPixels();
  for(int i=0;i<img.width;i++){
    for(int j=0;j<img.height;j++){
      idx = i * img.height + j;
      float red = red(img.pixels[idx]);
      float green  = green(img.pixels[idx]);
      float blue = blue(img.pixels[idx]);
      img.pixels[idx] = color(red, green, blue+100);
    }
  }
  img.updatePixels();
  image(img, 0, 0);
  noLoop();
}