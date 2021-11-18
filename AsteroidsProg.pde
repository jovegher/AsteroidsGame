Spaceship Jome;
Star[] sky = new Star[250];
public void setup() {
  size(500, 500);
  background(0); 
  frameRate(60);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  Jome = new Spaceship();
}
/*class Asteroid extends Floater
{
  double rotSpeed;
  Asteroid() {
    corners = 6;
    xCorners = new int[] {-11, 6, 11, 7, -12, -4};
    yCorners = new int[] {-7, -8, 0, 11, 7, 0};
  }
*/ 
  public void draw() 
  {
    background(0);
    for (int i = 0; i < sky.length; i++)
    {
      sky[i].show();
    }
    Jome.move();
    Jome.show();
  }

  public void keyPressed()
  {
    if (key == 'a') {
      Jome.turn(-10);
    } else if (key == 'd') {
      Jome.turn(10);
    } else if (key == 'w') {
      Jome.accelerate(2);
    } else if (key == 's') {
      Jome.accelerate(-2);
    } else if (key == 'h') {
      Jome.setXspeed(15);
      Jome.setYspeed(15);
    }
  }

