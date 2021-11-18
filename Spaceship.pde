class Spaceship extends Floater {
  public Spaceship() {
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -12;

    xCorners[1] = -12;
    yCorners[1] = 10;

    xCorners[2] = -10;
    yCorners[2] = 12;

    xCorners[3] = 20;
    yCorners[3] = 0;

    xCorners[4] = 12;
    yCorners[4] = -10;

    myColor = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));

    myCenterX = 250;
    myCenterY = 250;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = 0;
  }
  public void hyperspace()
  {
    Jome.setXspeed(0);
    Jome.setYspeed(0);
    Jome.setCenterX((int)(Math.random()*400));
    Jome.setCenterY((int)(Math.random()*400));
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setCenterX(double xx) {
    myCenterX = xx;
  }
  public void setCenterY(double yy) {
    myCenterY = yy;
  }
}
