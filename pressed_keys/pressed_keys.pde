Bug myBug = new Bug();
boolean mKeyDown = false;

void setup() {
  size(500, 500);
}

void draw() {
  background(220);
  myBug.display();
  if (mKeyDown) {
    myBug.move();
  }
}

void keyPressed() {
  if (key == 'm') {
    mKeyDown = true;
  }
}

void keyReleased() {
  if (key == 'm') {
    mKeyDown = false;
  }
}