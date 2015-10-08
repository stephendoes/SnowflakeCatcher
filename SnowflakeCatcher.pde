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
  
  for (int i = 0; i < blizzard.length; i++)
  {
      blizzard[i].erase();
      blizzard[i].lookDown();
      blizzard[i].move();
      blizzard[i].wrap();
      blizzard[i].show();
      
           
  }

}

void mouseDragged()
{
  //your code here
  noStroke();
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
    isMoving = false;
  }
  void show()
  {
    //your code here
    fill(255);
    noStroke();
    ellipse(snowX,snowY,5,5);
  }
  void lookDown()
  {
    //your code here

    if (get(snowX,snowY+7)!=color(0))
    {
      isMoving = false;
    }
    else isMoving = true;
  }
  void erase()
  {
    //your code here
    if(isMoving)
    {
     fill(0);
     noStroke();
     ellipse(snowX,snowY,9,9);
    }
  }
  void move()
  {
    //your code here
    if (isMoving)
    {
      snowY++;
      }
  }
  void wrap()
  {
    //your code here
    if (snowY > 390)
    {
      snowY = 0;
      snowX = (int)(Math.random()*400);
      isMoving= true;
    }
  }
}


