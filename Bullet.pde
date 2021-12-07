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
  public void move(int i) {
    for (i = 0; i < ammo.size(); i++)
    if (ammo.get(i).getCenterX > width)
    {     
      ammo.remove(i);
    } 
    if (ammo.get(i).getCenterY > height)
    {    
      ammo.remove(i);
    } 
  }
}
