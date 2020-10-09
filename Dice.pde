Die bob;
int rollOneSum = 0;
int rollTwoSum = 0;
int rollThreeSum = 0;
int rollFourSum = 0;
int rollFiveSum = 0;
int rollSixSum = 0;

void setup()
{
  size(500, 500);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{ 
  background(255);
  for (int Y = 55; Y < 495; Y += 55) { //your code here //495
    for (int X = 55; X < 440; X += 55) { // 440
    bob = new Die((X + 1), Y - 20);
    bob.roll();
    bob.show();
    }
  }
  int sum = rollOneSum + rollTwoSum + rollThreeSum + rollFourSum + rollFiveSum + rollSixSum;
  fill(0);
  text("Total: " +sum,250,20);
}

void mousePressed()
{
  redraw();
  rollOneSum = 0;
  rollTwoSum = 0;
  rollThreeSum = 0;
  rollFourSum = 0;
  rollFiveSum = 0;
  rollSixSum = 0;
}
class Die //models one single dice cube
{
  int numDots, myX, myY; //variable declarations here
  boolean rollOne, rollTwo, rollThree, rollFour, rollFive, rollSix;
  
  Die(int x, int y) //constructor
  {
    myX = x; //variable initializations here
    myY = y;
    rollOne = false; // default roll starts at one
    rollTwo = false;
    rollThree = false;
    rollFour = false;
    rollFive = false;
    rollSix = true;
  }
  void roll()
  {
    int randomGenerator = (int)(Math.random() * 5) + 1;
    if (randomGenerator == 1) { //your code here
      rollOne = true;
      rollOneSum = rollOneSum + 1;
    } else if (randomGenerator == 2) {
      rollTwo = true;
      rollTwoSum = rollTwoSum + 2;
    } else if (randomGenerator == 3) {
      rollThree = true;
      rollThreeSum = rollThreeSum + 3;
    } else if (randomGenerator == 4) {
      rollFour = true;
      rollFourSum = rollFourSum + 4;
    } else if (randomGenerator == 5) {
      rollFive = true;
      rollFiveSum = rollFiveSum + 5;
    } else {
      rollSix = true;
      rollSixSum = rollSixSum + 6;
    }
  }
  void show()
  {
    fill(255); 
    rect(myX, myY, 50, 50); //your code here
    if (rollOne == true) {
      fill(0);
      ellipse(myX + 25, myY + 25, 5, 5);
    } else if (rollTwo == true) {
      fill(0);
      ellipse(myX + 25, myY + 35, 5, 5);
      ellipse(myX + 25, myY + 15, 5, 5);
    } else if (rollThree == true) {
      fill(0);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 25, myY + 15, 5, 5);
      ellipse(myX + 25, myY + 35, 5, 5);
    } else if (rollFour == true) {
      fill(0);
      ellipse(myX + 12.5, myY + 12.5, 5, 5);
      ellipse(myX + 12.5, myY + 37.5, 5, 5);
      ellipse(myX + 37.5, myY + 12.5, 5, 5);
      ellipse(myX + 37.7, myY + 37.5, 5, 5);
    } else if (rollFive == true) {
      fill(0);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 12.5, myY + 12.5, 5, 5);
      ellipse(myX + 12.5, myY + 37.5, 5, 5);
      ellipse(myX + 37.5, myY + 12.5, 5, 5);
      ellipse(myX + 37.7, myY + 37.5, 5, 5);
    } else {
      fill(0);
      ellipse(myX + 18.75, myY + 25, 5, 5);
      ellipse(myX + 18.75, myY + 15, 5, 5);
      ellipse(myX + 18.75, myY + 35, 5, 5);
      ellipse(myX + 31.25, myY + 25, 5, 5);
      ellipse(myX + 31.25, myY + 15, 5, 5);
      ellipse(myX + 31.25, myY + 35, 5, 5);
    }
  }
}
