class Asteroid extends Floater
 {
 double rotSpeed;
 Asteroid() {
 stroke(80,77,77);
 corners = 6;
 xCorners = new int[] {-11, 6, 11, 8, -12, -13};
 yCorners = new int[] {-7, -8, 0, 11, 7, 0};
 rotSpeed = (double)(Math.random()*2-0.5);
 myColor = color(131,129,129);
 myCenterX = (int)(Math.random()*500-50);
 myCenterY = (int)(Math.random()*500-50);
 myXspeed = (int)(Math.random()*3-0.5);
 myYspeed = (int)(Math.random()*3-0.5);
 myPointDirection = 0;
 }
 public void move() 
 {
  turn(rotSpeed); 
  super.move();
  }
 }
