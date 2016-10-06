Die bob;
int total = 0;
void setup()
{
  //background(0,0,0);
  size(800,800);
  noLoop();
}
void draw()
{
  total = 0;
  int dieX;
  int dieY = 5;
  //your code here
  rect(0,0,800,800);
  for(int y = 1; y <= 3; y++){
    dieX = 5;
    for(int x = 1; x <= 3; x++){
      bob = new Die(dieX,dieY);
      bob.show();
      bob.roll();
      total += bob.roll;
      dieX += 100;
    }
    dieY += 100;
  }
  fill (255,255,255);
  text("Total = " + total,400,400);
  fill (0,0,0);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX;
  int myY;
  int roll;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    roll=(int)random(1,7);
    if(roll==1){
      fill(0,0,0);
      ellipse(myX + 40, myY + 40,20,20);
    }
    else if(roll==2){
      fill(0,0,0);
      ellipse(myX + 20, myY + 20,20,20);
      ellipse(myX + 60, myY + 60,20,20);
    }
    else if(roll==3){
      fill(0,0,0);
      ellipse(myX + 40, myY + 40,20,20);
      ellipse(myX + 20, myY + 20,20,20);
      ellipse(myX + 60, myY + 60,20,20);
    }
    else if(roll==4){
      fill(0,0,0);
      ellipse(myX + 60, myY + 20,20,20);
      ellipse(myX + 20, myY + 60,20,20);
      ellipse(myX + 20, myY + 20,20,20);
      ellipse(myX + 60, myY + 60,20,20);
    }
    else if(roll==5){
      fill(0,0,0);
      ellipse(myX + 40, myY + 40,20,20);
      ellipse(myX + 60, myY + 20,20,20);
      ellipse(myX + 20, myY + 60,20,20);
      ellipse(myX + 20, myY + 20,20,20);
      ellipse(myX + 60, myY + 60,20,20);
    }
    else if(roll==6){
      fill(0,0,0);
      ellipse(myX + 20, myY + 10,20,20);
      ellipse(myX + 60, myY + 40,20,20);
      ellipse(myX + 20, myY + 40,20,20);
      ellipse(myX + 60, myY + 10,20,20);
      ellipse(myX + 20, myY + 70,20,20);
      ellipse(myX + 60, myY + 70,20,20);
    }
    //your code here
  }
  void show()
  {
    //your code here
    fill(255,255,255);
    rect(myX,myY,80,80);
  }
}
