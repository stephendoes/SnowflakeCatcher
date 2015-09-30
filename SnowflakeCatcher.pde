Snowflake [] snowFlakes = new Snowflake[50];
void setup()

{
  //your code here
  size(400,400);
  frameRate(30);
  
  for (int i = 0;i<snowFlakes.length;i++)
  {
    snowFlakes[i] = new Snowflake();
  }

}
void draw()
{
  //your code here
  background(0);
  for (int i = 0; i < snowFlakes.length; i++)
  {
      snowFLakes[i].show();
  }

}
void mouseDragged()
{
  //your code here
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
    if (snowY > 410)
    {
      isMoving = false;
    }
    else if (snowY + 2 == color(0))
    {
      isMoving = false;
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


