PImage fish1;
PImage fish2;
PImage fish3;
PImage fish4;
PImage ocean;

int lastTimeCheck;
//int timeInterval = 1000; //working with millis
boolean changeColor = true ;
void setup()
{
  size(900, 700);
  fish1 = loadImage("fish.png");
  fish1.resize(130, 50);

  fish2 = loadImage("fish2.png");
  fish2.resize(130, 50);

  fish3 = loadImage("fish3.png");
  fish3.resize(110, 35);

  fish4 = loadImage("fish4.png");
  fish4.resize(110, 35);
  
  ocean = loadImage("ocean.png");
  ocean.resize(900,700);

  lastTimeCheck = millis();
}

void draw()
{
  color c = color(147, 232, 255); //from this color
  color c2 = color(1, 65, 131); //to this color

  float lerpAmount = map(mouseX, 0, width, 0, 1); //color interactive change
  background( lerpColor(c, c2, lerpAmount) ); // from c to c2 bk color change

  int cx = 390; //screen x
  int cy = 200; //screen y

  int a = 300; // width of rotation
  int b = 100; // height of rotation

  image(ocean , 0, 0);

  if ( millis() - lastTimeCheck > 900) {
    changeColor = !changeColor ;
    lastTimeCheck = millis() ;
  }
  if (changeColor == true) {
    float t = millis()/800.0f; //movement of fish

    //first circle of fish
    for (int i = 1; i <= 12; i++) {
      t = t + 100;
      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t< PI) {
        //moving right
        int x = (int)(cx + 200 * -cos(t));
        int y = (int)(cy + 50 * sin(t));
        image(fish3, x, y - 50);
        
      } else {
        //moving left
        int x = (int)(cx + 200 * -cos(t));
        int y = (int)(cy + 50 * sin(t));
        image(fish1, x, y - 50);
        fish1.resize(130, 50);
      }
    }

    //second circle of fish
    for (int i = 1; i <= 12; i++) {
      t = t + 100;
      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t< PI) {
        //moving right
        int x = (int)(cx + 250 * -cos(t));
        int y = (int)(cy + 80 * sin(t));
        image(fish3, x, y + 50);
      } else {
        //moving left
        int x = (int)(cx + 250 * -cos(t));
        int y = (int)(cy + 80 * sin(t));
        image(fish1, x, y + 50);
      }
    }

    //third circle of fish
    for (int i = 1; i <= 12; i++) {
      t = t + 100;
      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t< PI) {
        //moving right
        int x = (int)(cx + a * -cos(t));
        int y = (int)(cy + b * sin(t));
        image(fish3, x, y + 150);
      } else {
        //moving left
        int x = (int)(cx + a * -cos(t));
        int y = (int)(cy + b * sin(t));
        image(fish1, x, y + 150);
      }
    }

    //fourth circle of fish
    for (int i = 1; i <= 12; i++) {
      t = t + 100;
      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t< PI) {
        //moving right
        int x = (int)(cx + 350 * -cos(t));
        int y = (int)(cy + 150 * sin(t));
        image(fish3, x, y + 250);
      } else {
        //moving left
        int x = (int)(cx + 350 * -cos(t));
        int y = (int)(cy + 150 * sin(t));
        image(fish1, x, y + 250);
      }
    }
  } else if (changeColor == false) {
    float t = millis()/800.0f; //increase to slow down the movement
    //first
    
    if ( millis() - lastTimeCheck > 100) {
    changeColor = !changeColor ;
    lastTimeCheck = millis() ;
    
  }
  
    for (int i = 1; i <= 12; i++) {
      t = t + 100; //how spread apart
      ////////

      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t<PI) {
        //moving right
        int x = (int)(cx + 200 * -cos(t));
        int y = (int)(cy + 50 * sin(t));
        image(fish4, x, y - 50);
      } else {
        //moving left
        int x = (int)(cx + 200 * -cos(t));
        int y = (int)(cy + 50 * sin(t));
        image(fish2, x, y - 50);
      }
    }
    //second fish
    for (int i = 1; i <= 12; i++) {
      t = t + 100;
      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t<PI) {
        //moving right
        int x = (int)(cx + 250 * -cos(t));
        int y = (int)(cy + 80 * sin(t));
        image(fish4, x, y + 50);
      } else {
        //moving left
        int x = (int)(cx + 250 * -cos(t));
        int y = (int)(cy + 80 * sin(t));
        image(fish2, x, y + 50);
      }
    }


    //third fish
    for (int i = 1; i <= 12; i++) {
      t = t + 100;
      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t<PI) {
        //moving right
        int x = (int)(cx + a * -cos(t));
        int y = (int)(cy + b * sin(t));
        image(fish4, x, y + 150);
      } else {
        //moving left
        int x = (int)(cx + a * -cos(t));
        int y = (int)(cy + b * sin(t));
        image(fish2, x, y + 150);
      }
    }


    //fourth fish
    for (int i = 1; i <= 12; i++) {
      t = t + 100;
      while (t > TWO_PI) {
        t -= TWO_PI;
      }
      if (t<PI) {
        //moving right
        int x = (int)(cx + 350 * -cos(t));
        int y = (int)(cy + 150 * sin(t));
        image(fish4, x, y + 250);
      } else {
        //moving left
        int x = (int)(cx + 350 * -cos(t));
        int y = (int)(cy + 150 * sin(t));
        image(fish2, x, y + 250);
      }
    }
    
    
  }
}