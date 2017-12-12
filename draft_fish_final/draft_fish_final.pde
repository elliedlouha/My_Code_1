PImage fish1;
PImage fish2;

float countUpX = 0;
float countUpY = 0;
float sizeOfArc = 10;

void setup() {
  size(900, 700);
  fish1 = loadImage("fish.png");
  fish1.resize(130,50);
  
  fish2 = loadImage("fish2.png");
  fish2.resize(130,50);
}

void draw() {
  background(0);
  image(fish1, sin(countUpX) * sizeOfArc + width/2, 50);
    countUpX += .1;
    //countUpY += .1;
    //sizeOfArc += 1;
    
    
}