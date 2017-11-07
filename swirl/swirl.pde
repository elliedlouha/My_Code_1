float countUpX = 0;
float countUpY = 0;
float sizeOfArc = 10;
float sizeOfEarth = 10 ;
float sizeOfJupiter = 10 ;

import processing.pdf.*;

void setup() {
  //size(1600, 800, PDF, "space_time10.pdf");
  size(1200, 800);
  rectMode(CENTER);
  background(0);
}
void draw() {
  if (frameCount < 1000) {


    // jupiter
    stroke(20, 20, 20, 45);
    fill(142, 255, 239, 50);
    ellipse(sin(countUpX) *sizeOfJupiter + width/2, cos(countUpY) * 60 + height/2, 20, 20);
    countUpX += .07;
    countUpY += .07;
    sizeOfJupiter += 1 * .6;

    //venus
    fill(34, 47, 224, 50);
    ellipse(sin(countUpX) *sizeOfArc + width/2, cos(countUpY) * 40 + height/2, 10, 10);
    countUpX += .07;
    countUpY += .07;
    sizeOfArc += 1 * .3;

    //  mars
    fill(59, 234, 255, 80);
    ellipse(sin(countUpX) * sizeOfArc + width/2, cos(countUpY) * 120 + height/2, 60, 70);
    countUpX += .09;
    countUpY += .09;
    sizeOfArc += 1* .2;

    //  earth
    fill(59, 168, 255, 100);
    ellipse(sin(countUpX) * sizeOfEarth + width/2, cos(countUpY) * sizeOfArc + height/2, 50, 50);
    countUpX += .03;
    countUpY += .03;
    sizeOfEarth += 1 * .8;
  } else {
    exit();
  }
}