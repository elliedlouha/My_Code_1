boolean mKeyDown = false;
boolean nKeyDown = false;
boolean bKeyDown = false;
boolean vKeyDown = false;

void setup(){
  size(300, 300);
  
}

void draw(){
  background(255);
  
  if (mKeyDown) {
    background(252,252,15);
    fill(255);
    noStroke();
    ellipse(width/2, height/2, 50, 50);
  }
  if (nKeyDown) {
    background(255,18,10);
    fill(255);
    noStroke();
    triangle(90, 90, 100, 200,200,100);
  }
  if (bKeyDown) {
    background(0,219,255);
    fill(255);
    noStroke();
    ellipse(width/2, height/2, 50, 50);
  }
  if (vKeyDown) {
    background(82,227,0);
    fill(255);
    noStroke();
    rect(width/2, height/2, 50, 50);
  }
  
}
void keyPressed() {
  if (key == 'm') {
    mKeyDown = true;
    nKeyDown = false;
    bKeyDown = false;
    vKeyDown = false;
  }
  if (key == 'n') {
    mKeyDown = false;
    nKeyDown = true;
    bKeyDown = false;
    vKeyDown = false;
  }
  if (key == 'b') {
    mKeyDown = false;
    nKeyDown = false;
    bKeyDown = true;
    vKeyDown = false;
  }
  if (key == 'v') {
    mKeyDown = false;
    nKeyDown = false;
    bKeyDown = false;
    vKeyDown = true;
  }
}

//void keyReleased() {
//  if (key == 'm') {
//    mKeyDown = false;
//  }
//}