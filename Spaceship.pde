class Spaceship extends Floater {
  public Spaceship() {
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -12;

    xCorners[1] = -10;
    yCorners[1] = 12;

    xCorners[2] = 18;
    yCorners[2] = 0;

    xCorners[3] = -12;
    yCorners[3] = 10;

    xCorners[4] = 12;
    yCorners[4] = -10;

    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

    myCenterX = 0;
    myCenterY = 0;

    myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  //public void getCenterX(double myCenterX) {
    //return myCenterX;
  //}
  //public void getCenterY(double myCenterY) {
    //return myCenterY;
  //}
  
  public void move() {
    if (keyPressed && key == 'w') {
      setYspeed(2);
    } else if (keyPressed && key == 's') {
        setYspeed(-2);
      }
    }
    
    public void show() {
      fill(myColor);
      stroke(myColor);
      translate((float)myCenterX, (float)myCenterY);
    }
  }
