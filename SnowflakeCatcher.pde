Snowflake [] blizzard ;
void setup()

{
  //your code here
  background(0);
  size(400,400);
  frameRate(30);
  blizzard = new Snowflake[100]; 
  for (int i = 0;i<blizzard.length;i++)
  {
    blizzard[i] = new Snowflake();

  }

}
void draw()
{
  //your code here
  
  for (int xi = 0; xi < blizzard.length; xi++)
  {
      blizzard[xi].lookDown();
      blizzard[xi].move();
      blizzard[xi].wrap();
      blizzard[xi].show();
      
      
      
       
  }

}

void mouseDragged()
{
  //your code here
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(mouseX,mouseY,10,10);
  }

class Snowflake
{
  //class member variable declarations
  int snowX;int snowY;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    snowX = (int)(Math.random()*400);
    snowY = (int)(Math.random()*400);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255);
    ellipse(snowX,snowY,5,5);
  }
  void lookDown()
  {
    //your code here
   
    if (get(snowX,snowY+5)==color(0))
    {
      isMoving = true;
    }
    else isMoving = true;
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(snowX,snowY,7,7);
  }
  void move()
  {
    //your code here
    if (isMoving = true)
    {
      snowY++;
    }
    else snowY+=0;
  }
  void wrap()
  {
    //your code here
    if (snowY > 420)
    {
      snowY = 0;
      snowX = (int)(Math.random()*400);
    }
  }
}


