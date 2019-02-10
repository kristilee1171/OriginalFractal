public void setup()
{
  size(800,800);
  background(0);
}
public void draw()
{
  myFractal(300,300,100);
  myFractal(300,500,100);
  myFractal(400,400,200);
  myFractal(500,300,100);
  myFractal(500,500,100);
}
public void myFractal(int x, int y, int size)
{
  fill(x/2, y/2, x*y);
  stroke(x/3, y/3, x*y);
  ellipse(x, y, size, size);
  if(size > 10)
  {
    myFractal(x + (2*size/2), y, size/2);
    myFractal(x - (2*size/2), y, size/2);
    myFractal(x, y + (2*size/2), size/2);
    myFractal(x, y - (2*size/2), size/2);
  }   
}
