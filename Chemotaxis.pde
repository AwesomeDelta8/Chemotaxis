//declare bacteria variables here
Bacteria [] colony;
void setup()
{
  //initialize bacteria variables here
  size(1000, 1000);
  colony = new Bacteria[67];
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
  int myX, myY;
  boolean touched;
  Bacteria() {
    touched = false;
    myX = (int)(Math.random()*501)+250;
    myY = (int)(Math.random()*501)+250;
  }
  void walk() {
    if(mouseX>myX){
      myX = myX + (int)(Math.random()*5)-1;
    }else{
          myX = myX + (int)(Math.random()*5)-3;
    }
    if(mouseY>myY){
      myY = myY + (int)(Math.random()*5)-1;
    }else{
    myY = myY + (int)(Math.random()*5)-3;
  }
  }
  void show() {
    if (dist(mouseX,mouseY,myX,myY) < 25){
    touched = true;
    }else{
    touched = false;
    }
    if (touched == true){
    fill (0,255,0);
    }else{
    fill(255,0,0);
    }
    ellipse(myX, myY, 50, 50);
  }
}
