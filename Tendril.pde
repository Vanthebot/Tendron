class Tendril
{
  public final static int SEG_LENGTH = 10; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    //your code here
    float startX = myX;
    float startY = myY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle += (Math.random()*0.4) - 0.2;
      float endX = startX + cos((float)myAngle)*SEG_LENGTH;
      float endY = startY + sin((float)myAngle)*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
  }
}
Tendril bob;
public void setup() {
  size(400,400);
  background(255);
  bob = new Tendril(10, 45, 200, 200);
}

public void draw() {
  background(255);
  bob.show();
}
