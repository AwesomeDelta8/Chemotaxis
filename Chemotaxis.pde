//declare bacteria variables here
Bacteria [] colony;
int totalTouch;
void setup()
{
  //initialize bacteria variables here
  size(1000, 1000);
  colony = new Bacteria[50];
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Bacteria();
  }
}
void draw()
{
  background(0, 0, 255);
  for (int i = 0; i < colony.length; i++) {
    colony[i].walk();
    colony[i].show();
  }
}
class Bacteria
{
  color myC;
  int myX, myY, myXspeed, myYspeed, mySize;
  boolean touched;
  Bacteria() {
    touched = false;
    mySize = 10;
    myC = color(255, 0, 0);
    myX = (int)(Math.random()*1001);
    myY = (int)(Math.random()*1001);
    myXspeed = 10;
    myYspeed = 10;
  }
  void walk() {
    if (mouseX>myX) {
      myX = myX + (int)(Math.random()*myXspeed)-3;
    } else {
      myX = myX + (int)(Math.random()*myXspeed)-6;
    }
    if (mouseY>myY) {
      myY = myY + (int)(Math.random()*myYspeed)-3;
    } else {
      myY = myY + (int)(Math.random()*myYspeed)-6;
    }
  }
  void show() {
    if (dist(mouseX, mouseY, myX, myY) < mySize) {
      if (touched == false) {
        totalTouch++;
      }
      touched = true;
    }
    System.out.println(totalTouch);
    if (touched == true) {
      fill (0, 255, 0);
    } else {
      fill(myC);
    }
    if (totalTouch == 50){
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    }
    ellipse(myX, myY, mySize, mySize);
  }
}
