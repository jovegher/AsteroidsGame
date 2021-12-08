class Bullet extends Floater 
{
  public Bullet(Spaceship Jome) {
    myCenterX = Jome.getCenterX();
    myCenterY = Jome.getCenterY();
    myXspeed = Jome.getXspeed();
    myYspeed = Jome.getYspeed();
    myPointDirection = Jome.getPointDirection();
    accelerate(5);
  }
  public void show() {
    rect((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
