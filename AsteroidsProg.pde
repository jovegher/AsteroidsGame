Spaceship Jome;
Star[] sky = new Star[250];
public void setup() {
  size(500,500);
  background(0); 
  frameRate(60);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  Jome = new Spaceship();
}
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
