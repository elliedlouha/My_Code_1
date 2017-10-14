Bug myBug = new Bug();

Bug[] allTheBugs = new Bug[1];
//initialize the Array for bugs, but not the bugs themselves

void setup() {
  size(400, 600);
  noStroke();

  for (int i=0; i<allTheBugs.length; i++) {
    //must initialize the bugs
    allTheBugs[i] = new Bug();
  }
}

void draw() {
  background(50);

  for (int i=0; i<allTheBugs.length; i++) {
    allTheBugs[i].display();
    allTheBugs[i].move();
  }

  myBug.display();
  myBug.move();
}