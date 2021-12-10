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

    for (int i = 0; i < Jome.size(); i++) {
      myCenterX = myCenterX + 20;
      myCenterY = myCenterY + 20;
    }
    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = 0;
  }
  public void hyperspace(int CenterX, int CenterY)
  {
    CenterX = ((int)(Math.random()*250-50));
    CenterY = ((int)(Math.random()*250-50));
    myCenterX = CenterX += 20;
    myCenterY = CenterY += 20;
    for (int i = 0; i < Jome.size(); i++) {
      if (Jome.get(i).getCenterX() >width)
      {     
        myCenterX = 0;
      } else if (Jome.get(i).getCenterX() < 0)
      {     
        myCenterX = width;
      }    
      if (Jome.get(i).getCenterY() >height)
      {    
        myCenterY = 0;
      } else if (Jome.get(i).getCenterY() < 0)
      {     
        myCenterY = height;
      }   
      Jome.get(i).setXspeed(0);
      Jome.get(i).setYspeed(0);
      Jome.get(0).setCenterX(myCenterX);
      Jome.get(0).setCenterY(myCenterY);
      for (int n = 1; n < Jome.size(); n++) {
        if (Jome.get(n).getCenterX() > width)
        {     
          myCenterX = 0;
        } else if (Jome.get(n).getCenterX() < 0)
        {     
          myCenterX = width;
        }    
        if (Jome.get(n).getCenterY() >height)
        {    
          myCenterY = 0;
        } else if (Jome.get(n).getCenterY() < 0)
        {     
          myCenterY = height;
        }   
        myCenterX += 20;
        myCenterY += 20;
        Jome.get(n).setCenterX(myCenterX);
        Jome.get(n).setCenterY(myCenterY);
      }
    }
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
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myXspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
