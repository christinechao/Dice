Die dice2;
int totalRoll=0;

void setup()
{
  size(1024, 768);
  noLoop();
}

void draw()
{
  background(255);
  totalRoll=0;
  for(int y = 12 ; y <= 768 ; y +=14 )
{
  for(int x = 0 ; x <= 1024 ; x +=14) 
  {
     fill(#79D3FF);
     if (y >= 28){
       fill(#C179FF);
     }
     if (y >= 56){
       fill(#FCE68F);
     }
     if (y >= 84){
       fill(#FC8F9D);
     }
     if (y >= 112){
       fill(#8FFC96);
     }
     if (y >= 140){
       fill(#79D3FF);
     }
     if (y >= 168){
       fill(#C179FF);
     }
     if (y >= 196){
       fill(#FCE68F);
     }
     if (y >= 224){
       fill(#FC8F9D);
     }
     if (y >= 252){
       fill(#8FFC96);
     }
     if (y >= 280){
       fill(#79D3FF);
     }
     if (y >= 308){
       fill(#C179FF);
     }
     if (y >= 336){
       fill(#FCE68F);
     }
     if (y >= 364){
       fill(#FC8F9D);
     }
     if (y >= 392){
       fill(#8FFC96);
     }
      if (y >= 420){
       fill(#79D3FF);
     }
     if (y >= 448){
       fill(#C179FF);
     }
     if (y >= 476){
       fill(#FCE68F);
     }
     if (y >= 504){
       fill(#FC8F9D);
     }
     if (y >= 532){
       fill(#8FFC96);
     }
     if (y >= 560){
       fill(#79D3FF);
     }
     if (y >= 588){
       fill(#C179FF);
     }
     if (y >= 616){
       fill(#FCE68F);
     }
     if (y >= 644){
       fill(#FC8F9D);
     }
     if (y >= 672)
     {
       fill(#8FFC96);
     }
     if (y >= 700){
       fill(#79D3FF);
     }
     if (y >= 728){
       fill(#C179FF);
     }
     if (y >= 756){
       fill(#FCE68F);
     }
     if (y >= 784){
       fill(#FC8F9D);
     }
     
     dice2 = new Die(x, y);
     dice2.roll();
     dice2.show();
  }
}
  fill(0);
  text("Total Roll: " + totalRoll, 480 , 10);
}

void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int myDiceNum;
  int myX;
  int myY;
  int size;
  //variable declarations here
  Die(int x, int y) //constructor
  {
    myDiceNum = (int)((Math.random()*6)+1);
    myX = x;
    myY = y;
    size= 15;
  }
  void roll()
  {
    myDiceNum = (int)((Math.random()*6)+1);
  }
  void show()
  {
    stroke(255);
    rect(myX, myY, size, size);
    int circleSize = size/8;

    if (myDiceNum == 1) {
      ellipse(myX+(size/2), myY+(size/2), circleSize, circleSize); //one
      totalRoll += 1;
    }
    if (myDiceNum == 2) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize, circleSize);
      ellipse(myX+3*(size/4), myY+3*(size/4), circleSize, circleSize); 
      totalRoll += 2;
    }
    if (myDiceNum == 3) {
      ellipse(myX+(size/4), myY+(size/4), circleSize, circleSize); //three
      ellipse(myX+(size/2), myY+(size/2), circleSize, circleSize); //three
      ellipse(myX+3*(size/4)+1, myY+3*(size/4)+1, circleSize, circleSize); //three
      totalRoll += 3;
    }
    if (myDiceNum == 4) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize, circleSize); //four
      ellipse(myX+3*(size/4)+1, myY+(size/4), circleSize, circleSize); //four
      ellipse(myX+(size/4)+1, myY+3*(size/4), circleSize,circleSize); //four
      ellipse(myX+3*(size/4)+1, myY+3*(size/4), circleSize,circleSize); //four
      totalRoll += 4;
    }
    if (myDiceNum == 5) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize,circleSize); //five
      ellipse(myX+3*(size/4)+1, myY+(size/4), circleSize,circleSize); //five
      ellipse(myX+(size/4)+1, myY+3*(size/4), circleSize,circleSize); //five
      ellipse(myX+3*(size/4)+1, myY+3*(size/4), circleSize,circleSize); //five
      ellipse(myX+(size/2)+1, myY+(size/2)-1, circleSize,circleSize);   //five  
      totalRoll += 5;
    }
    if (myDiceNum == 6) {
      ellipse(myX+(size/4)+1, myY+(size/4), circleSize,circleSize); //six
      ellipse(myX+(size/4)+1, myY+2*(size/4), circleSize,circleSize); //six
      ellipse(myX+(size/4)+1, myY+3*(size/4), circleSize,circleSize); //six
      ellipse(myX+3*(size/4)+1, myY+(size/4), circleSize,circleSize);//six
      ellipse(myX+3*(size/4)+1, myY+2*(size/4), circleSize,circleSize); //six 
      ellipse(myX+3*(size/4)+1, myY+3*(size/4), circleSize,circleSize); //six  
      totalRoll += 6;
    }
  }
}
