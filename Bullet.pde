class Bullet extends Floater 
{
  public Bullet(Spaceship Jome) {
    myCenterX = Jome.getCenterX();
    myCenterY = Jome.getCenterY();
    myXspeed = Jome. getXspeed();
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
  public void move() {
    if (myCenterX > width)
    {     
      ammo.remove(i);
    } else if (myCenterX<0)
    {     
      myCenterX = width;
    }    
    if (myCenterY >height)
    {    
      ammo.get(i).remove(i);
    } else if (myCenterY < 0)
    {     
      myCenterY = height;
    }
  }
}
