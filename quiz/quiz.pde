int circleX, circleY;  // Position of circle button
int circleSize = 60;   // Diameter of circle

color circleColor;
color baseColor;

boolean circleOver = false;

boolean circlePressed = false;

float maxSpeed = 7;
float ellipseX, ellipseY, ellipseXSpeed, ellipseYSpeed;
boolean drawEllipse = false;


void setup() {
  size(500, 500);
  circleColor = color(0);
  baseColor = color(149, 250, 214);
  circleX = width/2;
  circleY = height/2;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);

  noStroke();
  if (circleOver) {
    //background(circleColor);
    circleColor = color(255, 188, 80);
  } else {
    background(baseColor);
    circleColor = color(0);
  }

  if (drawEllipse) {
    fill(140, 80, 255);
    ellipseX += ellipseXSpeed;
    ellipseY += ellipseYSpeed;
    ellipse(ellipseX, ellipseY, 20, 20);
    
  }


  fill(circleColor);
  ellipse(circleX, circleY, circleSize, circleSize);

  if (mousePressed == true) {
    if (circleOver) {
      drawEllipse = true;

      ellipseX = width/2;
      ellipseY = height/2;
      float angle = random(mouseY - height/2, mouseX - width/2);  
      ellipseXSpeed = cos(angle)*maxSpeed;
      ellipseYSpeed = sin(angle)*maxSpeed;
      
    }
  } else {
    fill(0); // Black
  }
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
  } else {
    circleOver = false;
  }
}


boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}