class Asteroid extends Floater
 {
 double rotSpeed;
 Asteroid() {
 stroke(80,77,77);
 corners = 6;
 xCorners = new int[] {-11, 6, 11, 8, -12, -13};
 yCorners = new int[] {-7, -8, 0, 11, 7, 0};
 rotSpeed = 1.25;
 myColor = color(131,129,129);
 myCenterX = 50;
 myCenterY = 50;
 myPointDirection = 0;
 }
 public void move() 
 {
  turn(rotSpeed); 
  super.move();
  myCenterX += myXspeed;
  myCenterY += myYspeed;
  if (myCenterX > width) {
    myCenterX = 0;
  }
 }
 }
